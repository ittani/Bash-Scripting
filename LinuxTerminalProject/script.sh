#!/bin/bash

# Define log file paths
path1="/Users/itannimaemo/OneDrive - Andile Solutions (Pty) Ltd/Bash-scripting/LinuxTerminalProject/CATT_JBOSS.log"
path2="/Users/itannimaemo/OneDrive - Andile Solutions (Pty) Ltd/Bash-scripting/LinuxTerminalProject/EXECUTOR_TAAS1.log"

# Output file for error summary
error_summary="error_summary.txt"

# Clear the summary file before writing
echo "Error Summary Report" > "$error_summary"
echo "====================" >> "$error_summary"

# Loop through the log files
for log_file in "$path1" "$path2"; do
    # Check if the log file exists
    if [ ! -f "$log_file" ]; then
        echo "Error: File '$log_file' not found!" | tee -a "$error_summary"
        continue
    fi

    echo "====================================="
    echo "Analyzing errors in: $log_file"
    echo "====================================="
    echo "=========== Ittani Maemo ============"
		
    printf "\n"

    # Count total number of errors
    total_errors=$(grep -c "ERROR" "$log_file")
    echo "Total Errors Found: $total_errors"
    echo "$(basename "$log_file"): $total_errors errors" >> "$error_summary"

    echo "---------------------------------"
    echo "Error Occurrences:"
    grep "ERROR" "$log_file" | awk -F 'ERROR' '{print $2}' | sort | uniq -c | sort -nr

    echo "---------------------------------"
    echo "Analysis complete."
    echo
done

echo "Error summary saved in: $error_summary"

