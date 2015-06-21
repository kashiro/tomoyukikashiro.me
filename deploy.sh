#!/bin/sh

$BASE_DIR=`cwd`
rm -rf dist
git clone -b gh-pages git@github.com:kashiro/tomoyukikashiro.me.git dist

####################
# sample
####################
cp -rf sample/* dist/

####################
# hi
####################
cp -rf hi/* dist/

####################
# resume
####################
cd resume
npm install
npm install -g grunt-cli
bower install
grunt build
cp -rf dist/* ${BASE_DIR}/dist
