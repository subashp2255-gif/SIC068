import urllib.request
import json
import os

with open('scratch/full_seed_proc.sql', 'r', encoding='utf8') as f:
    sql_text = f.read()

# Combine with procedure invocation
full_query = sql_text + "\nSELECT public.seed_all_data();"

print(f"Prepared full query of size {len(full_query)} bytes.")

# Save to file for easy execution
with open('scratch/combined_seed_exec.sql', 'w', encoding='utf8') as f:
    f.write(full_query)

print("Saved scratch/combined_seed_exec.sql")
