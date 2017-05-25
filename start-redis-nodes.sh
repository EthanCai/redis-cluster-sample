#!/bin/bash

# Use unofficial Bash Strict Mode
set -euo pipefail
IFS=$'\n\t'

CUR_DIR=$(cd $(dirname $0) && pwd)

ports=(
  "7000"
  "7001"
  "7002"
  "7003"
  "7004"
  "7005"
)

for p in ${ports[@]}; do
  DATA_DIR="$CUR_DIR/$p"
  mkdir -p $DATA_DIR

  CONF_PATH=$DATA_DIR/redis.conf
  cp $CUR_DIR/redis.conf.template $CONF_PATH
  echo "port $p" >> $CONF_PATH
done

cd $CUR_DIR/7000 && redis-server redis.conf
cd $CUR_DIR/7001 && redis-server redis.conf
cd $CUR_DIR/7002 && redis-server redis.conf
cd $CUR_DIR/7003 && redis-server redis.conf
cd $CUR_DIR/7004 && redis-server redis.conf
cd $CUR_DIR/7005 && redis-server redis.conf
