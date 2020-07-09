#!/bin/bash
# shellcheck disable=SC2034
USAGE=""
# shellcheck disable=SC2034
DESC="access git subcommands"

git () {
  command ./git $@
}