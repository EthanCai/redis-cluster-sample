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

cd $CUR_DIR && ./redis-trib.rb create --replicas 1 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005
cd $CUR_DIR/sentinel && redis-sentinel sentinel.conf
