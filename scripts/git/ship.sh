#!/bin/sh
export USAGE=""
export DESC="commit changes quickly with generic message"

ship () {
  git add -A
  git commit -m "🚢 shiped at $(date +"%m-%d-%Y %r")"
  git push
}

shipit=ship