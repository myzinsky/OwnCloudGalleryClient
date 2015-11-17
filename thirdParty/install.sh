#!/bin/sh

if [ ! -d "./neon" ]; then

    export PATH="/Users/myzinsky/Zeugs/Qt/5.5/clang_64/bin:/usr/bin:/bin:/usr/sbin:/sbin"

    curl -O http://www.webdav.org/neon/neon-0.30.1.tar.gz
    tar xfv neon-0.30.1.tar.gz

    cd neon-0.30.1
    CC="/usr/bin/clang" ./configure --prefix="$PWD"/../neon
    make
    make install
    
    cd ..
    rm -rf neon-0.30.1 neon-0.30.1.tar.gz
fi
