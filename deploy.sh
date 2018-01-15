#!/bin/sh

####################
# hi
####################
cd _hi
git pull origin master
cd -
cp ./_hi/* ./

####################
# push
####################
git add .
git commit -m 'update'; git push origin master -f
