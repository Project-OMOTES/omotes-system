#!/bin/bash

BACKUP_DIR="/root/omotes-system/backup"
VOLUMES_TO_BACKUP=(
    "omotes-system_influxdb_storage"
    "omotes-system_db-data"
    "omotes-system_broker-data"
    "omotes-rest_db-data"
    "esdlmapeditor_validator-storage"
    "baseinfrastructure_postgres_storage"
    "baseinfrastructure_mongo_storage"
    "baseinfrastructure_geoserver_storage"
)

TYPE="${1:-daily}"
mkdir -p "$BACKUP_DIR"

echo "=== Starting Docker Volume Backup ($TYPE): $(date) ==="

SKIPPED_VOLUMES=()

for VOL in "${VOLUMES_TO_BACKUP[@]}"; do
    if ! docker volume inspect "$VOL" >/dev/null 2>&1; then
        echo "[WARNING] Volume '$VOL' does not exist on this host, skipping (not an error, e.g. unused on this deployment)."
        SKIPPED_VOLUMES+=("$VOL")
        continue
    fi

    echo "[INFO] Backing up volume: $VOL..."
    OUTPUT_FILE="$BACKUP_DIR/${VOL}_backup_${TYPE}.tar.gz"

    # # Temporary container to archive data and overwrite previous file of this type
    docker run --rm \
        -v "$VOL":/volume_data:ro \
        -v "$BACKUP_DIR":/backup_dest \
        alpine tar -czf "/backup_dest/$(basename "$OUTPUT_FILE")" -C /volume_data .

    if [ $? -eq 0 ]; then
        echo "[SUCCESS] Saved to $OUTPUT_FILE"
    else
        echo "[ERROR] Backup failed for $VOL"
    fi
done

if [ ${#SKIPPED_VOLUMES[@]} -gt 0 ]; then
    echo "[SUMMARY] Skipped ${#SKIPPED_VOLUMES[@]} volume(s) not found on this host: ${SKIPPED_VOLUMES[*]}"
fi

echo "=== Backup Process Finished: $(date) ==="