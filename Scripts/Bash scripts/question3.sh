#!/bin/bash

# source and destination directories
SOURCE_DIR="./source_folder"
DEST_DIR="./json_and_CSV"

# to create the destination directory if it doesn't exist
mkdir "$DEST_DIR"

# to move all CSV and JSON files from source to destination
mv $SOURCE_DIR/*.csv $DEST_DIR/
mv $SOURCE_DIR/*.json $DEST_DIR/

echo "Files have been moved to $DEST_DIR"
