#!/bin/bash
# Script to backup a folder by synchronizing it (only copying changed files).
#
# Copyright (C) 2013 Dieter Adriaenssens <ruleant@users.sourceforge.net>

DATA_DIR=/mnt/data
BACKUP_DIR=/mnt/backup
#EXCLUDE="--exclude=folder"
EXCLUDE=

if test -d $DATA_DIR && test -d $BACKUP_DIR && test -w $BACKUP_DIR; then
    rsync -av --delete $EXCLUDE $DATA_DIR $BACKUP_DIR
else
    echo "Source or backup dir don't exist, or data dir is not writeable."
fi
