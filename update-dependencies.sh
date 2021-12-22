#!/bin/sh

echo "preparing the latest version of 3rd-party dependencies ...\n"

mkdir -p 3rdparty
cd 3rdparty

echo "--> nodejs / http-parser"
if [ -e http-parser ]; then
    cd http-parser
    git pull --no-rebase origin main
else
    git clone https://github.com/nodejs/http-parser.git
fi

cd ..
echo "\ndone."
