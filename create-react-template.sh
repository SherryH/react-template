#!/bin/bash
# bash ./create-react-template.sh ../test1 test-project "TEST HTML"

#  $0= Absolute path to this script, e.g. /home/user/bin/foo.sh
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH="$( cd "$(dirname "$0")" ; pwd -P )"

PROJECT_NAME=$1
TITLE=$2
DEST_DIR=$3

echo "TITLE $TITLE"
echo "PROJECT_NAME $PROJECT_NAME"

if [[ -z $PROJECT_NAME || -z $TITLE ]]; then
 echo 'PROJECT_NAME and TITLE need to be supplied'
 exit 1
fi

# If $3 is not supplied, use current directory
if [[ -z $DEST_DIR ]]; then
    DEST_DIR=$PWD
    echo "current directory $PWD"
fi

echo "DEST_DIR $DEST_DIR"

echo "SCRIPTPATH $SCRIPTPATH $0"

# enable copy dot files
shopt -s dotglob

# copy all files to dest dir except for this script and generated files
rsync -az --stats --exclude '.git' --exclude 'create-react-template.sh' $SCRIPTPATH/ $DEST_DIR/


# Update Project name
sed -e "s;%NAME%;$PROJECT_NAME;g" $SCRIPTPATH/package.json > $DEST_DIR/package.json
sed -e "s;%TITLE%;$TITLE;g" $SCRIPTPATH/src/index.html > $DEST_DIR/src/index.html

# install dependencies
cd $DEST_DIR
npm install
