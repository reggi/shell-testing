#!/bin/sh
import ./npm/npm_bin.sh
export USAGE="<COMMAND> <...ARGS>"
export DESC="runs npm scripts, or a localy package bin"
export ALIAS="npm"

run_npm () {
  SUBCMD=$1

  __SCRIPTS=$(cd "$__ROOT" && node -e "console.log(Object.keys(require('./package.json').scripts || []).join('\n'))")
  __SCRIPTMATCH=false
  
  for __SCRIPT in $__SCRIPTS; do
    if [ "$__SCRIPT" = "$1" ]; then
      __SCRIPTMATCH=true
    fi
  done

  if [ -n "$SUBCMD" ]
  then
    if [ "$__SCRIPTMATCH" = true ]
    then
      # echo "subcommand $SUBCMD is in package.scripts, running from there"
      shift
      npm run "$SUBCMD" -- "$@"
    else
      if [ -f "$__ROOT/node_modules/.bin/$SUBCMD" ]
      then
        # echo "subcommand was found in .bin/, running from there"
        shift
        "$__ROOT/node_modules/.bin/$SUBCMD" $@
      else
        # echo "subcommand was not found"
        command ./npm "$@"
      fi
    fi
  else
    echo "no extra arg found"
    command ./npm "$@"
  fi  
}