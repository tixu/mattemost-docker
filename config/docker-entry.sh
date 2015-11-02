#!/bin/sh
echo creating logs file
touch logs.txt
echo starting platform
cd /mattermost/bin/
echo part 1
./platform -config=/config/config.json >> logs.txt 
tail -f logs.txt
