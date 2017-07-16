#!/bin/sh

####################
# hi
####################
cd _hi
git pull origin master
cd -
cp ./_hi/* ./

####################
# resume
####################
cd _resume
git pull origin master
npm install
npm run build
cd -
cp -rf ./_resume/dist/* ./resume/

####################
# push
####################
git add .
git commit -m 'update'; git push origin master -f
