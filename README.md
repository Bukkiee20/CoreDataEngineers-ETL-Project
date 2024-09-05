# CoreDataEngineers-ETL-Project
Assignment Submission for CDE Bootcamp

## Overview

This repository contains scripts and SQL queries for managing ETL processes and analyzing data as required by CoreDataEngineers. 
The scripts perform tasks such as downloading and transforming CSV files, moving files, and querying a PostgreSQL database.

## Directory Structure

- `Scripts/`
  - `Bash/` - Contains all Bash scripts
  - `SQL/` - Contains all SQL scripts
- `README.md` - This file

## Bash Scripts

This script performs an ETL process that:
1. **Extracts** a CSV file from a provided URL.
2. **Transforms** the file by renaming columns and selecting specific columns.
3. **Loads** the transformed data into a specified folder.

#### Usage
To run this script, use:
```bash
/<script_name>.sh
