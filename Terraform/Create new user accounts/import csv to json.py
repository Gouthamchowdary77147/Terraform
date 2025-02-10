import csv
import json
import sys

csv_file = "users.csv"  # Update this with your actual CSV file path

# Read CSV and convert to JSON format for Terraform
users = []
with open(csv_file, newline='', encoding='utf-8') as f:
    reader = csv.DictReader(f)
    for row in reader:
        users.append(row)

# Output JSON for Terraform external provider
print(json.dumps({"users": users}))
