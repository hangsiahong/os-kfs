#!/bin/bash
# Author < HangsiaHONG hangsia@koompi.org >

CWD=$PWD
source $CWD/config
export KFS

mkdir -v $KFS/sources
chmod -v a+wt $KFS/sources
cp $CWD/wget-list $KFS/sources
cp $KFS/sources
wget --input-file=wget-list --continue --directory-prefix=$KFS/sources

echo -e "Finished downloading source files"

