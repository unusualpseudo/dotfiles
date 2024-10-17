#!/bin/bash

current_dir=$(pwd)
source_dir="$current_dir/.config"
target_dir="$HOME/.config"
backup_dir="$HOME/.config_bak"

# Function to backup existing .config directory
backup_config() {
  if [ -d "$target_dir" ]; then
    if [ -d "$backup_dir" ]; then
      echo "Backup directory $backup_dir already exists, deleting..."
      rm -rf "$backup_dir"
    fi

    if cp -r "$target_dir" "$backup_dir"; then
      echo "Backing up $target_dir to $backup_dir"
    else
      echo "Failed to create backup. Exiting."
      exit 1
    fi
  fi
}

# Function to create a symbolic link
create_symlink() {
  source_path=$1
  target_path=$2

  # Check if the item exists in the target directory
  if [ -e "$target_path" ]; then
    echo "Found $target_path, deleting..."
    rm -rf "$target_path"
  fi

  # Create the symbolic link
  ln -s "$source_path" "$target_path"
  echo "Created symlink for $source_path 🔗 $target_path"
}

# Function to process files and create symbolic links
process_files() {
  # Ensure the target directory exists
  mkdir -p "$target_dir"

  # Find all files in the source .config directory
  find "$source_dir" -type f | while read -r source_path; do
    # Get the relative path of the source file
    relative_path="${source_path#"$source_dir"/}"
    target_path="$target_dir/$relative_path"
    target_subdir=$(dirname "$target_path")

    # Create the target subdirectory if it doesn't exist
    mkdir -p "$target_subdir"

    # Call the function to create the symbolic link
    create_symlink "$source_path" "$target_path"
  done
}

# Ensure the source directory exists
if [ ! -d "$source_dir" ]; then
  echo "Source directory $source_dir does not exist."
  exit 1
fi

# Call the backup function
backup_config

# Call the function to process files and create symbolic links
process_files

# make fish default shell
# shellcheck disable=SC2046
chsh -s $(which fish)
