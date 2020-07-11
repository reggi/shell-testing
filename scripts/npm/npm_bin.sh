#!/bin/sh
export USAGE="<bin> <...args>"
export DESC="executes npm binary from node_modules"
export ALIAS='bin'

npm_bin () {
  SUBCMD=$1
  shift
  if [ -f "$__ROOT/node_modules/.bin/$SUBCMD" ]
  then
    "$__ROOT/node_modules/.bin/$SUBCMD" $@
  else 
    echo "no executable found in node_modules for $SUBCMD"
  fi
}