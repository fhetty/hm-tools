#!/bin/bash
#
# script to generate the CCU addon package.

# generate tempdir
mkdir -p tmp/
rm -rf tmp/*

# copy all relevant stuff
cp -a update_script tmp/
cp -a VERSION tmp/
cp -a www tmp/
cp -a rc.d tmp/
cp -a profile.d tmp/
cp -a licenses tmp/

### Hier können einzelne Programme !!! abgewählt !!! werden ###
# Bitte beachten, es gibt einen arm und eine x86 Bereich!
# z.B. "cp -a arm/expect tmp/arm/"
# wird "# cp -a arm/expect tmp/arm/"

# *** arm based binarys arm (armv7l) *** 
mkdir tmp/arm
# copy expect
cp -a arm/expect tmp/arm/

# copy mc
cp -a arm/mc tmp/arm/

# copy nano
cp -a arm/nano tmp/arm/

# copy htop
cp -a arm/htop tmp/arm/

# copy bash
cp -a arm/bash tmp/arm/

# copy imagemagick
cp -a arm/imagemagick tmp/arm/

# copy sshpass
cp -a arm/sshpass tmp/arm/

# *** amd64 based binarys x86 (i686) ***
mkdir tmp/amd64
# copy expect
cp -a amd64/expect tmp/amd64/

# copy mc
cp -a amd64/mc tmp/amd64/

# copy nano
cp -a amd64/nano tmp/amd64/

# copy htop
cp -a amd64/htop tmp/amd64/

# copy bash
cp -a amd64/bash tmp/amd64/

# copy imagemagick
cp -a amd64/imagemagick tmp/amd64/

# copy sshpass
cp -a amd64/sshpass tmp/amd64/

###############################################################

# generate archive
cd tmp
tar --owner=root --group=root --exclude=.DS_Store -czvf ../hm-tools-$(cat ../VERSION).tar.gz *
cd ..
rm -rf tmp
