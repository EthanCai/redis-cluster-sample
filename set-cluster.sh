#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

CUR_DIR=$(cd $(dirname $0) && pwd)

cd $CUR_DIR && ./redis-trib.rb create --replicas 1 $1:7000 $1:7001 $1:7002 $1:7003 $1:7004 $1:7005

mkdir -p sentinel
cp -f $CUR_DIR/sentinel.conf.template sentinel/sentinel.conf
echo "dir \"$CUR_DIR/sentinel\"" >> sentinel/sentinel.conf
cd $CUR_DIR/sentinel && redis-sentinel sentinel.conf
