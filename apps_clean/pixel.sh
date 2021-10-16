#!/bin/bash

LOCALDIR=`cd "$( dirname ${BASH_SOURCE[0]} )" && pwd`
cd $LOCALDIR



# Fix Files-DocumentsUI
rm -rf $1/product/overlay/PixelDocumentsUIOverlay
# hbmSV
rm -rf $1/system_ext/priv-app/HbmSVManager
