#!/usr/bin/env sh

# abort script if a command fails
set -e

# prepend spark-shell if command is not detected
if [ $# -eq 0 ] || [ "${1:0:1}" == '-' ] || [ -z `command -v "$1" || echo -n` ]; then
  set -- spark-shell "$@"
fi

exec "$@"
