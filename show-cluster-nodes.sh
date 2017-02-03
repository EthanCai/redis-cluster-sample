#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

./redis-trib.rb check 127.0.0.1:7000
./redis-trib.rb info 127.0.0.1:7000
