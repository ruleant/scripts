#!/bin/bash
# Script to backup a folder by synchronizing it (only copying changed files).
#
# Copyright (C) 2013 Dieter Adriaenssens <ruleant@users.sourceforge.net>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.

DATA_DIR=/mnt/data
BACKUP_DIR=/mnt/backup
#EXCLUDE="--exclude=folder"
EXCLUDE=
EXCLUDEFILE=./exclude

if test -d $DATA_DIR && test -d $BACKUP_DIR && test -w $BACKUP_DIR; then
    rsync -av --delete --delete-excluded $EXCLUDE --exclude-from=$EXCLUDEFILE $DATA_DIR $BACKUP_DIR
else
    echo "Source or backup dir doesn't exist, or data dir is not writeable."
fi
