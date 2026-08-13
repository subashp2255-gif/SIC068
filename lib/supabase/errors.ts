/**
 * Supabase error handling utilities
 */

export class SupabaseError extends Error {
  public code: string;
  public details: string;
  public hint: string;

  constructor(message: string, code = "UNKNOWN", details = "", hint = "") {
    super(message);
    this.name = "SupabaseError";
    this.code = code;
    this.details = details;
    this.hint = hint;
  }
}

/**
 * Handles a Supabase query result, throwing a typed error on failure.
 */
export function handleSupabaseError(error: {
  message: string;
  code?: string;
  details?: string;
  hint?: string;
}): never {
  throw new SupabaseError(
    error.message,
    error.code || "UNKNOWN",
    error.details || "",
    error.hint || ""
  );
}

/**
 * Wraps a Supabase query call with standardized error handling.
 * Returns the data directly on success; throws SupabaseError on failure.
 */
export async function querySupabase<T>(
  queryFn: () => Promise<{ data: T | null; error: { message: string; code?: string; details?: string; hint?: string } | null }>
): Promise<T> {
  const { data, error } = await queryFn();
  if (error) handleSupabaseError(error);
  if (data === null) throw new SupabaseError("No data returned", "NO_DATA");
  return data;
}

/**
 * Returns user-friendly error messages for common Supabase error codes.
 */
export function getUserFriendlyError(error: unknown): string {
  if (error instanceof SupabaseError) {
    switch (error.code) {
      case "PGRST116":
        return "The requested item was not found.";
      case "23505":
        return "This item already exists.";
      case "23503":
        return "This action references data that no longer exists.";
      case "42501":
        return "You don't have permission to perform this action.";
      case "PGRST301":
        return "Too many results returned. Please refine your search.";
      default:
        return "Something went wrong. Please try again.";
    }
  }
  if (error instanceof Error) {
    return error.message;
  }
  return "An unexpected error occurred. Please try again.";
}
