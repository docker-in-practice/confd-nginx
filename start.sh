#!/bin/sh
set -e
if [ $# != 1 ]; then
    echo "Usage: docker run <img> <etcd-backend>"
    exit 1
fi
ETCD="$1"
echo "Using $ETCD as backend"
service nginx start
confd -interval 10 -node $ETCD -config-file /etc/confd/conf.d/app-nginx.toml
