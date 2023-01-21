#!/usr/bin/env bash

# datei name mit unix timestamp
FILENAME=db-backup-$(date +%s)

# als platzhalter für DB backup datei erstellen
echo "content von backup" > $FILENAME

# file hochladen
scp $FILENAME user@remote:/path/to/backup