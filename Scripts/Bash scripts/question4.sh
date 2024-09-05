#!/bin/bash

# Database configuration
DB_NAME="posey"
DB_USER="bukky"
DB_HOST="localhost"
# Directory containing CSV files
CSV_DIR="/mnt/c/Users/BUKKIE/Desktop/CDE_Bootcamp/project_csv"


# Iterate over CSV files and copy to PostgreSQL
for csv_file in $CSV_DIR/*.csv; do
    table_name=$(basename "$csv_file" .csv)
    echo "Copying $csv_file into table $table_name"
    psql -U $DB_USER -d $DB_NAME -h $DB_HOST -c "\copy $table_name FROM '$csv_file' WITH CSV HEADER"
done