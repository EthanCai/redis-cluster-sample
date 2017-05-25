#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

find . -name appendonly.aof | xargs rm -f
find . -name dump.rdb | xargs rm -f
find . -name nodes.conf | xargs rm -f
find . -name redis.conf | xargs rm -f
find . -name sentinel.conf | xargs rm -f
