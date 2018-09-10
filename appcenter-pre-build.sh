#!/usr/bin/env bash

if [ "$APPCENTER_BRANCH" != "master" ];
then
    plutil -replace CFBundleName -string "\$(PRODUCT_NAME) Beta" $APPCENTER_SOURCE_DIRECTORY/reactnativepipeline55/Info.plist
fi
plutil -replace CFBundleIdentifier -string "io.rangle.reactnativepipeline" $APPCENTER_SOURCE_DIRECTORY/reactnativepipeline55/Info.plist

echo "POTATO 1"
cat ios/reactnativepipeline55/Info.plist

false
