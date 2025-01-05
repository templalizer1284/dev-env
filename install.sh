#!/bin/sh

# Unpacking good stuff
tar xvf mg.tar
tar xvf mksh-R59c.tar

# Compiling
cd mg
./configure
make
cp mg /usr/local/bin
cp mg.1 /usr/share/man/man1

cd ..
cd mksh
chmod +x Build.sh
sh ./Build.sh
cp mksh /usr/local/bin

cd ..

# Copying config files to home folder
cp dot.mkshrc ~/.mkshrc
