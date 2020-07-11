#!/bin/sh
export USAGE=""
export DESC="installs ts-node and it's dependenciess locally"
export ALIAS='install'

ts_node_install () {
  npm i ts-node tsconfig-paths typescript
}