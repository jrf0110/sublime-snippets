#! /bin/sh

pkgDir="/Users/john/Library/Application\ Support/Sublime\ Text\ 2/Packages/User"
files="./*"
for file in $files
do
  if [ -f "$file" ]
  then
    if [ "$file" == "./sync.sh" ]
    then
      continue
    fi
    "cp $file $pkgDir/${file:2}"
  fi
done
