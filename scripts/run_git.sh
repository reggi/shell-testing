#!/bin/sh
export USAGE="<COMMAND>"
export DESC="access custom git commands"
export ALIAS="git"

run_git () {
  command ./git "$@"
}