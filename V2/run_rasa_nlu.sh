#!/bin/bash
#

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(greadlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
echo $SCRIPTPATH
PROJECTROOTPATH="$(dirname "$SCRIPTPATH")"
echo $PROJECTROOTPATH

source ${SCRIPTPATH}/ENV/bin/activate
rasa run --enable-api -m rasax/models/nlu-20211215-201159.tar.gz
#rasa shell nlu -m rasax/models/nlu-20211025-140457.tar.gz
