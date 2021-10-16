#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR
source $LOCALDIR/../language_helper.sh

WORKSPACE=$LOCALDIR/../workspace
IMAGESDIR=$WORKSPACE/images
TARGETDIR=$WORKSPACE/out

systemdir="$TARGETDIR/system/system"
scirpt_name=$(echo ${0##*/})
src_dir=$LOCALDIR/$(echo ${scirpt_name%%.*}) 

echo "${scirpt_name%%.*} fixing"

# Fix Media Provider
if [ -d $systemdir/apex/com.google.android.mediaprovider ];then
  cp -frp $src_dir/system/apex/com.google.android.mediaprovider/* $systemdir/apex/com.google.android.mediaprovider/
fi
