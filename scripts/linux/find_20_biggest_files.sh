#!/bin/bash

set -euo pipefail

find /home -type f -exec du -h {} + | sort -hr | head -20 
