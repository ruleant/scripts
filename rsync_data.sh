#!/bin/bash

DATA_DIR=/mnt/data
BACKUP_DIR=/mnt/backup

if test -d $DATA_DIR && test -d $BACKUP_DIR && test -w $BACKUP_DIR; then
    rsync -av --delete --exclude=mysql/ $DATA_DIR $BACKUP_DIR
else
    echo "Source or backup dir don't exist, or data dir is not writeable."
fi
