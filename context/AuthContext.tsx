"use client";

import React, { createContext, useContext, useState, useEffect } from "react";
import { toast } from "sonner";
import { normalizeEmail, isValidEmail, GENERIC_AUTH_ERROR } from "@/lib/auth";
import { getSupabaseBrowserClient } from "@/lib/supabase/client";

export interface User {
  id: string;
  email: string;
  name?: string;
  createdAt: string;
  isAdmin?: boolean;
}

interface AuthContextType {
  user: User | null;
  isLoading: boolean;
  signIn: (email: string, password: string, rememberMe?: boolean) => Promise<{ success: boolean; error?: string }>;
  signUp: (name: string, email: string, password: string) => Promise<{ success: boolean; error?: string }>;
  signOut: () => Promise<void>;
  resetPassword: (email: string) => Promise<{ success: boolean; message: string }>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

const SESSION_KEY = "onejourney_auth_user";

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [isLoading, setIsLoading] = useState<boolean>(true);

  // Initialize active user session on mount
  useEffect(() => {
    let mounted = true;
    const supabase = getSupabaseBrowserClient();

    const checkAdminAndSetUser = async (sessionUser: any) => {
      let isAdm = false;
      try {
        const { data: adminRes } = await (supabase.rpc as any)("is_admin");
        isAdm = !!adminRes;
      } catch (err) {
        isAdm = false;
      }

      if (!mounted) return;
      const authUser: User = {
        id: sessionUser.id,
        email: sessionUser.email || "",
        name: sessionUser.user_metadata?.full_name || sessionUser.email?.split("@")[0] || "User",
        createdAt: sessionUser.created_at || new Date().toISOString(),
        isAdmin: isAdm,
      };
      setUser(authUser);
    };

    // 1. Synchronize from Supabase auth session
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (!mounted) return;
      if (session?.user) {
        checkAdminAndSetUser(session.user);
      } else {
        // Fallback to local session storage
        try {
          const persistentSession = typeof window !== "undefined" ? localStorage.getItem(SESSION_KEY) : null;
          const transientSession = typeof window !== "undefined" ? sessionStorage.getItem(SESSION_KEY) : null;
          const savedUserStr = persistentSession || transientSession;
          if (savedUserStr) {
            const parsed = JSON.parse(savedUserStr);
            if (parsed && parsed.email && parsed.id) {
              setUser(parsed);
            }
          }
        } catch (e) {
          console.error("Failed to restore authentication session:", e);
        }
      }
      setIsLoading(false);
    });

    // 2. Listen for auth state changes
    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      if (!mounted) return;
      if (session?.user) {
        checkAdminAndSetUser(session.user);
      } else {
        setUser(null);
      }
    });

    return () => {
      mounted = false;
      subscription.unsubscribe();
    };
  }, []);


  /**
   * Authenticate user with password
   */
  const signIn = async (
    email: string,
    password: string,
    rememberMe = false
  ): Promise<{ success: boolean; error?: string }> => {
    setIsLoading(true);

    try {
      const cleanEmail = normalizeEmail(email);

      if (!cleanEmail || !isValidEmail(cleanEmail) || !password) {
        return {
          success: false,
          error: GENERIC_AUTH_ERROR,
        };
      }

      // Check if Supabase is configured
      try {
        const supabase = getSupabaseBrowserClient();
        const { data, error } = await supabase.auth.signInWithPassword({
          email: cleanEmail,
          password,
        });

        if (error) {
          return { success: false, error: error.message };
        }

        if (data?.user) {
          const authenticatedUser: User = {
            id: data.user.id,
            email: data.user.email || cleanEmail,
            name: data.user.user_metadata?.full_name || cleanEmail.split("@")[0],
            createdAt: data.user.created_at || new Date().toISOString(),
          };

          setUser(authenticatedUser);

          if (rememberMe) {
            localStorage.setItem(SESSION_KEY, JSON.stringify(authenticatedUser));
          } else {
            sessionStorage.setItem(SESSION_KEY, JSON.stringify(authenticatedUser));
          }

          return { success: true };
        }
      } catch (supabaseErr: any) {
        console.warn("Supabase auth integration error:", supabaseErr);
        return { success: false, error: supabaseErr.message || GENERIC_AUTH_ERROR };
      }


      // Simulated network latency for auth verification (600ms)
      await new Promise((resolve) => setTimeout(resolve, 600));

      // Standard user session creation for traveller backend
      const userId = `usr_${btoa(cleanEmail).replace(/[^a-zA-Z0-9]/g, "").slice(0, 12)}`;
      const authenticatedUser: User = {
        id: userId,
        email: cleanEmail,
        name: cleanEmail.split("@")[0].replace(/[._-]/g, " ").replace(/\b\w/g, (c) => c.toUpperCase()),
        createdAt: new Date().toISOString(),
      };

      setUser(authenticatedUser);

      // Persist session according to Remember Me selection
      if (rememberMe) {
        localStorage.setItem(SESSION_KEY, JSON.stringify(authenticatedUser));
        sessionStorage.removeItem(SESSION_KEY);
      } else {
        sessionStorage.setItem(SESSION_KEY, JSON.stringify(authenticatedUser));
        localStorage.removeItem(SESSION_KEY);
      }

      return { success: true };
    } catch {
      return {
        success: false,
        error: "A network error occurred. Please check your internet connection and try again.",
      };
    } finally {
      setIsLoading(false);
    }
  };

  /**
   * Register a new traveller user account
   */
  const signUp = async (
    name: string,
    email: string,
    password: string
  ): Promise<{ success: boolean; error?: string }> => {
    setIsLoading(true);

    try {
      const cleanEmail = normalizeEmail(email);
      const cleanName = name.trim();

      if (!cleanEmail || !isValidEmail(cleanEmail)) {
        return { success: false, error: "Please enter a valid email address." };
      }

      if (!password || password.length < 6) {
        return { success: false, error: "Password must be at least 6 characters long." };
      }

      // Check Supabase if configured
      try {
        const supabase = getSupabaseBrowserClient();
        const { data, error } = await supabase.auth.signUp({
          email: cleanEmail,
          password,
          options: { data: { full_name: cleanName } },
        });

        if (error) {
          return { success: false, error: error.message };
        }

        if (data?.user) {
          const newUser: User = {
            id: data.user.id,
            email: data.user.email || cleanEmail,
            name: cleanName || cleanEmail.split("@")[0],
            createdAt: data.user.created_at || new Date().toISOString(),
          };
          setUser(newUser);
          localStorage.setItem(SESSION_KEY, JSON.stringify(newUser));
          return { success: true };
        }
      } catch (supabaseErr) {
        console.warn("Supabase signUp fallback:", supabaseErr);
      }

      // Fallback register delay
      await new Promise((resolve) => setTimeout(resolve, 600));

      const userId = `usr_${btoa(cleanEmail).replace(/[^a-zA-Z0-9]/g, "").slice(0, 12)}`;
      const newUser: User = {
        id: userId,
        email: cleanEmail,
        name: cleanName || cleanEmail.split("@")[0],
        createdAt: new Date().toISOString(),
      };

      setUser(newUser);
      localStorage.setItem(SESSION_KEY, JSON.stringify(newUser));
      return { success: true };
    } catch {
      return { success: false, error: "Registration failed. Please try again later." };
    } finally {
      setIsLoading(false);
    }
  };

  /**
   * Reset user password
   */
  const resetPassword = async (email: string): Promise<{ success: boolean; message: string }> => {
    const cleanEmail = normalizeEmail(email);
    const neutralMessage = "If an account exists for this email, you’ll receive password-reset instructions shortly.";

    if (!cleanEmail || !isValidEmail(cleanEmail)) {
      return { success: true, message: neutralMessage };
    }

    try {
      const supabase = getSupabaseBrowserClient();
      await supabase.auth.resetPasswordForEmail(cleanEmail);
    } catch (e) {
      console.warn("Reset password request sent:", e);
    }

    return { success: true, message: neutralMessage };
  };

  /**
   * Sign out current user
   */
  const signOut = async (): Promise<void> => {
    setIsLoading(true);
    try {
      try {
        const supabase = getSupabaseBrowserClient();
        await supabase.auth.signOut();
      } catch (e) {
        console.warn("Supabase signout issue:", e);
      }

      setUser(null);
      localStorage.removeItem(SESSION_KEY);
      sessionStorage.removeItem(SESSION_KEY);
      toast.info("You have signed out.");
    } finally {
      setIsLoading(false);
    }
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        isLoading,
        signIn,
        signUp,
        signOut,
        resetPassword,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return context;
}
