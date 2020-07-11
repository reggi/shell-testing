#!/bin/sh
import ../npm/npm_bin.sh
export USAGE=""
export DESC="runs ts-node"
export ALIAS='run'

ts_node_run () {
  if [ -n "$1" ]; then
    npm_bin ts-node \
      -r tsconfig-paths/register \
      "$@"
  else
    npm_bin ts-node \
      -r tsconfig-paths/register
  fi
}