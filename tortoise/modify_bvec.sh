#!/bin/bash

# Function to print usage
usage() {
    echo "Usage: $0 -f <filename> [-o <output_file>] [-p <permutation>] [-m <multiply>]"
    echo "  -f <filename>      : Path to the .bvecs file."
    echo "  -o <output_file>   : Path to save the modified .bvecs file (default: original filename with '_modified.bvecs')."
    echo "  -p <permutation>   : Rearrange lines, e.g., '2,1,3' for swapping line 1 and 2."
    echo "  -m <multiply>      : Multiply lines by -1, e.g., '1,3' to negate lines 1 and 3."
    exit 1
}

# Parse arguments
while getopts "f:o:p:m:" opt; do
    case ${opt} in
        f) file=$OPTARG ;;
        o) output_file=$OPTARG ;;
        p) permutation=$OPTARG ;;
        m) multiply=$OPTARG ;;
        *) usage ;;
    esac
done

# Check if the file is provided and exists
if [[ -z $file || ! -f $file ]]; then
    echo "Error: .bvecs file is required and must exist."
    usage
fi

# Determine the output filename
if [[ -z $output_file ]]; then
    output_file="${file%.bvecs}_modified.bvecs"
fi

# Read the file lines
mapfile -t lines < "$file"

# Check if the file has exactly 3 lines
if [[ ${#lines[@]} -ne 3 ]]; then
    echo "Error: The file must contain exactly 3 rows."
    exit 1
fi

# Apply permutation if specified
if [[ -n $permutation ]]; then
    IFS=',' read -r -a perm <<< "$permutation"
    if [[ ${#perm[@]} -ne 3 ]]; then
        echo "Error: Permutation must specify exactly 3 positions, e.g., '2,1,3'."
        exit 1
    fi
    temp_lines=("${lines[@]}")
    for i in {0..2}; do
        lines[$i]="${temp_lines[${perm[$i]}-1]}"
    done
fi

# Apply multiplication if specified
if [[ -n $multiply ]]; then
    IFS=',' read -r -a mult <<< "$multiply"
    for i in "${mult[@]}"; do
        if ((i < 1 || i > 3)); then
            echo "Error: Line numbers to multiply must be in the range 1-3."
            exit 1
        fi
        line_index=$((i - 1))
        lines[$line_index]=$(echo "${lines[$line_index]}" | awk '{for(i=1;i<=NF;i++) $i = -$i}1')
    done
fi

# Write the modified lines to the output file
printf "%s\n" "${lines[@]}" > "$output_file"
echo "File created successfully: $output_file"
