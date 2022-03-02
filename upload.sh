#! /bin/bash
dir=$(pwd |awk -F "/" '{print $NF}')
user="developer-onizuka"
token=$1

git remote remove origin
git remote add origin https://$token@github.com/$user/$dir
git push --set-upstream origin master


