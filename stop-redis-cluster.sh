#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

ps -ef | grep redis-server | grep -v grep | awk '{print $2}' | xargs -J % kill %
ps -ef | grep redis-sentinel | grep -v grep | awk '{print $2}' | xargs -J % kill %
