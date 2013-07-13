#!/bin/bash

DATA_DIR=/mnt/data
BACKUP_DIR=/mnt/backup

rsync -av --delete --exclude=mysql/ $DATA_DIR $BACKUP_DIR

