#!/bin/bash

d=`date "+%y%m%d"`
git add .
git commit -m "deploy $d"
git push origin master

