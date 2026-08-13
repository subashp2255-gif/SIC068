/**
 * Authentication Helper Utilities
 */

/**
 * Normalizes and trims email addresses to lowercase
 */
export function normalizeEmail(email: string): string {
  return email.trim().toLowerCase();
}

/**
 * Validates email format using standard RFC 5322 regex pattern
 */
export function isValidEmail(email: string): boolean {
  const normalized = normalizeEmail(email);
  if (!normalized) return false;
  // Standard email validation regex
  const emailRegex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
  return emailRegex.test(normalized);
}

/**
 * Sanitizes redirect URLs to prevent open-redirect vulnerabilities.
 * Ensures the target is an internal path starting with a single '/'
 */
export function sanitizeRedirectUrl(redirectUrl: string | null | undefined): string {
  if (!redirectUrl) return "/";

  // Decode URI component to check for hidden characters or malicious protocols
  let cleanUrl = redirectUrl;
  try {
    cleanUrl = decodeURIComponent(redirectUrl);
  } catch {
    return "/";
  }

  cleanUrl = cleanUrl.trim();

  // Reject URLs starting with //, http:, https:, javascript:, data:, etc.
  if (
    cleanUrl.startsWith("//") ||
    /^[a-zA-Z][a-zA-Z0-9+.-]*:/.test(cleanUrl) ||
    cleanUrl.includes("\r") ||
    cleanUrl.includes("\n")
  ) {
    return "/";
  }

  // Must start with a single '/'
  if (cleanUrl.startsWith("/")) {
    return cleanUrl;
  }

  return "/";
}

/**
 * Generic invalid credentials user notification
 */
export const GENERIC_AUTH_ERROR =
  "We couldn’t sign you in with those details. Check your email and password and try again.";
