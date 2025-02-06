#!/bin/sh

# Unpacking good stuff
pax -rvf mg.tar
pax -rvf mksh-R59c.tar
pax -j -rvf tmux-3.5a

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

cd tmux-3.5a
./configure --prefix=/usr/local --disable-utf8proc
make install

cd ..

# Copying config files to home folder
cp dot.mkshrc ~/.mkshrc
