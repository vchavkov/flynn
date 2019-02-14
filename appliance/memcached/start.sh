#!/bin/bash

case $1 in
  memcached)
    shift
    exec /bin/flynn-memcached $*
    ;;
  api)
    shift
    exec /bin/flynn-memcached-api $*
    ;;
  *)
    echo "Usage: $0 {memcached|api}"
    exit 2
    ;;
esac
