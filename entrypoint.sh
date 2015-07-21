#!/bin/bash
set -e

EXTRA_OPTS=${EXTRA_OPTS:-}
CACHE_SIZE=${CACHE_SIZE:-64}

# default behaviour is to launch memcached
if [[ -z ${1} ]]; then
  exec $(which memcached) -v -m ${CACHE_SIZE} -p 11211 -u nobody ${EXTRA_OPTS}
else
  exec "$@"
fi
