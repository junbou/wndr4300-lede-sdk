#!/bin/sh

if [ `whoami` != 'mockbulider' ]; then
  echo "Must be run as 'mockbuilder'!"
  exit 1
fi

cd ~/sdk
PKG_LST=package/custom/package.lst
if [ ! -f $PKG_LST ]; then
  echo "package.lst not exist!"
  exit 1
fi
while read LINE
do
  echo "Building $LINE ..."
  make package/$LINE/compile V=s
done < $PKG_LST
exit 0
