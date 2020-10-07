#!/bin/bash
# Author < HangsiaHONG hangsia@koompi.org >

CWD=$PWD
source $CWD/config

groupadd kfs
/sbin/useradd -s /bin/bash -g kfs -m -k /dev/null kfs

echo -e "123\n123" | passwd kfs


chown -v kfs $KFS/{usr,lib,var,etc,bin,sbin,tools}
case $(uname -m) in
  x86_64) chown -v kfs $KFS/lib64 ;;
esac

chown -v kfs $KFS/sources

cd $CWD
cd ..
cp -r os-kfs /home/kfs


#echo 'Download script again this time as KFS user'

#su - kfs
sudo -u kfs bash -c 'cd ~/os-kfs && bash setup_env.sh && bash build-stage1.sh' 