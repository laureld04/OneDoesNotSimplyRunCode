#!/bin/bash

# Check arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <csv_directory> <output_filename.csv>"
  exit 1
fi

csv_dir="$1"
output_file="$csv_dir/$2"

# Remove output if it already exists
rm -f "$output_file"

first=1
for csv in "$csv_dir"/*.csv; do
  if [ "$first" -eq 1 ]; then
    # Copy header + content without trailing blank lines
    awk 'NF' "$csv" >> "$output_file"
    first=0
  else
    # Skip header, append only data (excluding blank lines)
    tail -n +2 "$csv" | awk 'NF' >> "$output_file"
  fi
done

echo "CSV files from '$csv_dir' concatenated into: $output_file"
