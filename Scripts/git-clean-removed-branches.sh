#!/bin/bash

exists=`git show-ref refs/heads/master`
if [ -n "$exists" ]; then
    git checkout master
else
    git checkout main
fi

echo "To use d or D flag? [d|D]"
read d
if [ $d != 'd' ] || [ $d != 'D' ]; then
    d="d"
fi

branches=`git fetch -p && git branch -vv | awk '/: gone]/{print $1}'`
echo $branches
for branch in $branches
do
    xargs git branch -$d $branch
done
