import { createClient } from "@supabase/supabase-js";

const supabaseUrl = "https://yyvheenjtkosqzecelqm.supabase.co";
const supabaseAnonKey = "sb_publishable_y_sVAgbm3y9OOakNEMK1sQ_gQGi7_Ge";

const supabase = createClient(supabaseUrl, supabaseAnonKey);

async function main() {
  console.log("Registering subashp1350@gmail.com...");
  const { data, error } = await supabase.auth.signUp({
    email: "subashp1350@gmail.com",
    password: "123456",
    options: {
      data: {
        full_name: "Admin Subash",
      },
    },
  });

  if (error) {
    console.error("SignUp Error:", error.message);
  } else {
    console.log("SignUp Success! User ID:", data.user?.id);
  }
}

main();
