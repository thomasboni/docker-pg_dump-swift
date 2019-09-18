#!/bin/bash

# This script run a pg_dump and then upload the result on swift object storage

BACKUP_FOLDER="/tmp/"
DATE="$(date +%Y%m%dT%H%M)"
BACKUP_PATH="${BACKUP_FOLDER}${DATE}${BACKUP_FILE}"

# Set the password file
echo "$DB_HOST:$DB_PORT:$DB_NAME:$DB_USER:$DB_PASS" > ~/.pgpass

# Generate the dump
echo "launch pg_dump"
/usr/local/bin/pg_dump -d $DB_NAME -h $DB_HOST -p $DB_PORT -U $DB_USER -w > "${BACKUP_PATH}" && echo "dump done"

# Upload it
echo "launch the upload"
/usr/bin/swift upload --object-name "${DATE}_${BACKUP_FILE}" $SWIFT_CONTAINER "${BACKUP_PATH}" && echo "upload done"
