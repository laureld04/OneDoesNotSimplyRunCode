import os
import heapq

def get_largest_files(start_dir, top_n=50, log_file=r"C:\Users\laure\Documents\Silva_Lab_LAD\largest_files_log.txt"):
    file_sizes = []

    # Walk through directories
    for root, _, files in os.walk(start_dir):
        for name in files:
            try:
                filepath = os.path.join(root, name)
                size = os.path.getsize(filepath)
                file_sizes.append((size, filepath))
            except (PermissionError, FileNotFoundError):
                continue  # Skip files you can’t access

    # Get top N largest files
    largest_files = heapq.nlargest(top_n, file_sizes, key=lambda x: x[0])

    # Write to log file
    with open(log_file, "w", encoding="utf-8") as f:
        f.write(f"Largest {top_n} files in {start_dir}:\n\n")
        for size, filepath in largest_files:
            f.write(f"{size / (1024*1024):.2f} MB\t{filepath}\n")

    print(f"Log saved to {log_file}")

if __name__ == "__main__":
    # Change this to the folder you want to scan (e.g., "C:\\")
    directory_to_scan = "C:\\"
    get_largest_files(directory_to_scan, top_n=50)