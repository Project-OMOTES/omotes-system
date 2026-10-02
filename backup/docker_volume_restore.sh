#!/bin/bash

# Ensure both arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 </path/to/backup_file.tar.gz> <target_volume_name>"
    exit 1
fi

BACKUP_FILE="$1"
VOL="$2"

# 1. Validation Checks
if [ ! -f "$BACKUP_FILE" ]; then
    echo "[ERROR] Backup file not found: $BACKUP_FILE"
    exit 1
fi

# Extract directory and base name for Docker mounting isolation
BACKUP_DIR=$(dirname "$(realpath "$BACKUP_FILE")")
FILE_NAME=$(basename "$BACKUP_FILE")

# 2. Volume Check & Safety Prompt
if ! docker volume inspect "$VOL" >/dev/null 2>&1; then
    echo "[INFO] Target volume '$VOL' does not exist. Creating it now..."
    docker volume create "$VOL"
else
    # Volume exists, demand confirmation before destructive overwrite
    echo "============================================================"
    echo "WARNING: Target volume '$VOL' already exists."
    echo "============================================================"
    read -rp "Are you sure you want to overwrite it? (yes/NO): " CONFIRM

    if [ "$CONFIRM" != "yes" ]; then
        echo "[INFO] Restore cancelled. No changes made."
        exit 0
    fi
fi

echo "[INFO] Restoring $FILE_NAME into volume '$VOL'..."

# 3. Wipe current destination data and extract archive
docker run --rm \
    -v "$VOL":/volume_data \
    -v "$BACKUP_DIR":/backup_dest:ro \
    alpine sh -c "rm -rf /volume_data/* && tar -xzf /backup_dest/$FILE_NAME -C /volume_data"

# 4. Result validation
if [ $? -eq 0 ]; then
    echo "[SUCCESS] Volume '$VOL' has been successfully restored."
else
    echo "[ERROR] Restore failed."
    exit 1
fi