#!/bin/sh
# This is a comment!
echo Removing dist...
rm -r dist
echo Removing node_modules...
rm -r node_modules
echo Clearing cache...
npm cache clear --force
echo npm install
npm install --verbose
echo building...
gulp buildAllWithoutReload
echo uploading to s3...
gulp upload-content-types
echo uploading icons to s3
gulp upload-icons
echo uploading viz

#gulp upload-willow-content-types
#echo updating content-types
#gulp update-content-types
#echo updating willow-content-types
#gulp update-willow-content-types