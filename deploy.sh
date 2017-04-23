#!/bin/sh

####################
# hi
####################
cd hi
git pull origin master
cd -
cp hi/* ./

####################
# resume
####################
cd resume
git pull origin master
npm install
bower install
grunt build
cd -
cp -rf resume/dist/* ./

####################
# push
####################
git commit -am 'update'; git push origin master -f
