#!/bin/bash

# Loop through each folder in the main directory
for folder in */; do
    echo "Processing folder: $folder"
    # Navigate into the folder
    cd "$folder" || exit

    # Find paired-end FASTQ files
    read1_file=$(ls *_1.fastq.gz 2>/dev/null)
    read2_file=$(ls *_2.fastq.gz 2>/dev/null)

    # Check if paired files exist
    if [[ -n "$read1_file" && -n "$read2_file" ]]; then
        echo "Found paired files: $read1_file and $read2_file"

        # Run FASTP to trim the files
        fastp -i "$read1_file" -I "$read2_file" \
              -o trimmed_"$read1_file" -O trimmed_"$read2_file" \
              --html fastp_report.html --json fastp_report.json

        echo "Trimming completed for $read1_file and $read2_file"
    else
        echo "No paired-end files found in $folder"
    fi

    # Go back to the parent directory
    cd ..
done

echo "All folders processed!"

