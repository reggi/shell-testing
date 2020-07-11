#!/bin/sh
export USAGE="<COMMAND>"
export DESC="example commands"
export ALIAS="soup"

nest () {
  ALIAS="soup"
  command ./nest "$@"
}