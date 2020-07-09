BASEDIR="$(cd "$(dirname "$0")"; pwd)"
. $BASEDIR/import.sh
import ./git/current_branch.sh
current_branch