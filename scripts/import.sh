# #!/bin/bash


# file_name () {
#   basename "${1%.*}"
# }
# hyphen () {
#   echo "$1" | tr '_' '-'
# }
# underscore () {
#   echo "$1" | tr '-' '_'
# }

# script () {
  
#   BASEDIR=$(realpath ${BASE})/FILE
#   FILES="$(find "$BASEDIR" ! -name 'main.sh' -type f -name '*.sh' -print | sort -t '\0' -n)"
#   DIRS="$(find "$BASEDIR" ! -path "$BASEDIR" -type d)"
#   TUSAGE="\\n"
#   USAGE=""
#   DESC=""
#   FOUND=false
#   SAVE=$1
#   FIRST=$(underscore "$SAVE")

#   # loop over script files
#   for FILE in $FILES; do
#     if [ -f "$FILE" ]; then
#       # shellcheck source=/dev/null
#       . "$FILE"
#       FNAME=$(file_name "$FILE")
#       PRETTYNAME=$(hyphen "$FNAME")
#       BUSAGE=$(printf '%-30s' "$PRETTYNAME $USAGE")   
#       TUSAGE="$TUSAGE $BUSAGE $DESC\n"
#       USAGE=""
#       if [ "$1" = "$FNAME" ]; then
#         FOUND=true
#       fi
#       if [ "$FIRST" = "$FNAME" ]; then
#         FOUND=true
#       fi
#     fi
#   done

#   if [ "$FOUND" = true ]; then
#     shift
#     "$FIRST" "$@"
#   else
#     printf "Usage: <...args>\n"
#     echo "$TUSAGE"
#     exit 1
#   fi
# }


# need some sort of function in every dir

# script ./_git $@

# /scripts
#   /script.sh
#   /git.sh
#     /

import () {
  BASE="$(cd "$(dirname "$0")" || exit; pwd)"
  if [ -n "$__DIRNAME" ];then 
    BASE=$__DIRNAME
  fi
  __FILENAME="$BASE"/"$1"
  export __FILENAME
  __DIRNAME="$(cd "$(dirname "$__FILENAME")" || exit; pwd)"
  export __DIRNAME
  . "$__FILENAME"
}
