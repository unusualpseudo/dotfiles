#!/bin/bash

current_dir=$(pwd)
source_dir="$current_dir/.config"
target_dir="$HOME/.config"
backup_dir="$HOME/.config_bak"

# Ensure the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory $source_dir does not exist."
  exit 1
fi

# Backup existing .config directory if it exists
if [ -d "$target_dir" ]; then
  # Check if the backup directory already exists
  if [ -d "$backup_dir" ]; then
    echo "Backup directory $backup_dir already exists, deleting..."
    rm -rf "$backup_dir"
  fi

  # Copy the existing .config to the backup directory
  if cp -r "$target_dir" "$backup_dir"; then
    echo "Backing up $target_dir to $backup_dir"
  else
    echo "Failed to create backup. Exiting."
    exit 1
  fi
fi

# Ensure the target directory exists
mkdir -p "$target_dir"

# Loop through all files and directories in the source .config directory
for item in "$source_dir"/*; do
  item_name=$(basename "$item")
  source_path="$source_dir/$item_name"
  target_path="$target_dir/$item_name"

  # Create the target directory if it does not exist
  mkdir -p "$(dirname "$target_path")"

  # Check if the item exists in the target directory
  if [ -e "$target_path" ]; then
    echo "$target_path exists, deleting..."
    rm -rf "$target_path"
  fi

  # Create the symbolic link
  ln -s "$source_path" "$target_path"
  echo "Created symlink for $source_path 🔗 $target_path"
done
