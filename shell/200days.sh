#!/bin/bash

# Input date format: YYYY-MM-DD
input_date=$1  # The date is passed as the first argument

# Calculate the date 200 days from the input date
output_date=$(date -I -d "$input_date + 200 days")

echo $output_date