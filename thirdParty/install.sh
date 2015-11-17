#!/bin/sh

#if [ ! -d "./neon" ]; then
#
#    export PATH="/Users/myzinsky/Zeugs/Qt/5.5/clang_64/bin:/usr/bin:/bin:/usr/sbin:/sbin"
#
#    curl -O http://www.webdav.org/neon/neon-0.30.1.tar.gz
#    tar xfv neon-0.30.1.tar.gz
#
#    cd neon-0.30.1
#    CC="/usr/bin/clang" ./configure --prefix="$PWD"/../neon
#    make
#    make install
#    
#    cd ..
#    rm -rf neon-0.30.1 neon-0.30.1.tar.gz
#fi

if [ ! -d "./onion" ]; then

    curl -O http://kent.dl.sourceforge.net/project/libonion/libonion%20source/0.2.0alpha/onion-0.2.0alpha.tar.gz
    tar xfv onion-0.2.0alpha.tar.gz

    cd onion-0.2.0

    CC="/usr/bin/clang" ./configure --prefix="$PWD"/../onion
    make
    make install
    
    cd ..
    rm -rf onion-0.2.0alpha.tar.gz onion-0.2.0

fi

