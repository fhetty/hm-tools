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

# *** arm based binarys (armv7l) *** 
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

# copy oathtool
cp -a arm/oathtool tmp/arm/

# copy iostat
cp -a arm/iostat tmp/arm/

# *** x86 based binarys (i686) ***
mkdir tmp/x86
# copy expect
cp -a x86/expect tmp/x86/

# copy mc
cp -a x86/mc tmp/x86/

# copy nano
cp -a x86/nano tmp/x86/

# copy htop
cp -a x86/htop tmp/x86/

# copy bash
cp -a x86/bash tmp/x86/

# copy imagemagick
cp -a x86/imagemagick tmp/x86/

# copy sshpass
cp -a x86/sshpass tmp/x86/

# copy oathtool
cp -a x86/oathtool tmp/x86/

# copy iostat
cp -a x86/iostat tmp/x86/

###############################################################

# generate archive
cd tmp
tar --owner=root --group=root --exclude=.DS_Store -czvf ../hm-tools-$(cat ../VERSION).tar.gz *
cd ..
rm -rf tmp
