#!/bin/bash

# the direct download URL
CSV_URL="https://drive.google.com/uc?export=download&id=1RzRcT-knehM0_sxmDkUd6-pt8zCrh2N0"

# to create the raw directory if it doesn't exist
mkdir -p raw

# Download the CSV file
curl -L -o raw/financial-data.csv "$CSV_URL"

# Check if the file was downloaded successfully
if [ -f "raw/financial-data.csv" ]; then
    echo "File successfully downloaded to raw/financial-data.csv"
else
    echo "Error: File was not downloaded"
    exit 1
fi

# to navigate to the raw directory
cd raw || { echo "Error: Could not navigate to raw directory"; exit 1; }

# Rename column and select specific columns
sed '1s/Variable_code/variable_code/' financial-data.csv | csvcut -c Year,Value,Units,variable_code > 2023_year_finance.csv

# to create the Transformed directory if it doesn't exist
mkdir ../Transformed

# to move the transformed file to the Transformed directory
mv 2023_year_finance.csv ../Transformed/

# Confirm file was moved
if [ -f "../Transformed/2023_year_finance.csv" ]; then
    echo "File successfully loaded into the Transformed folder"
else
    echo "Error: File was not loaded into the Transformed folder"
    exit 1
fi

# Load the transformed data into a directory named Gold
mkdir -p ../Gold
cp ../Transformed/2023_year_finance.csv ../Gold/

# Confirm file was loaded into the Gold folder
if [ -f "../Gold/2023_year_finance.csv" ]; then
    echo "File successfully loaded into the Gold folder"
else
    echo "Error: File was not loaded into the Gold folder"
    exit 1
fi
