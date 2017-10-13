#!/usr/bin/env bash

let oldversion=`curl http://s3.amazonaws.com/feelflight/firmware/blanked.version`
let newversion=oldversion+1

echo "============="
echo "New Version:"
echo $newversion

sed -i "s/REPLACE_WITH_CURRENT_VERSION/$newversion/g" src/main.cpp
echo $newversion > upload/blanked.version