#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

CUR_DIR=$(cd $(dirname $0) && pwd)

cd $CUR_DIR/7000 && redis-server redis.conf
cd $CUR_DIR/7001 && redis-server redis.conf
cd $CUR_DIR/7002 && redis-server redis.conf
cd $CUR_DIR/7003 && redis-server redis.conf
cd $CUR_DIR/7004 && redis-server redis.conf
cd $CUR_DIR/7005 && redis-server redis.conf
