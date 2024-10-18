#!/bin/bash

## used to find top 20 biggest files on system. Some files cannot be find, WORKING ON IT

find /home -type f -exec du -h {} + | sort -hr | head -20 
