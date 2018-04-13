#!/bin/sh
set -e

ROOT_PATH=/ws/htdocs
LOG_PATH=/ws/log/nginx

if [ ! -d "$ROOT_PATH" ]; then
    mkdir -p $ROOT_PATH
fi

if [ ! -d "$LOG_PATH" ]; then
    mkdir -p $LOG_PATH
fi

nginx -g "daemon off; error_log /dev/stderr info;"
