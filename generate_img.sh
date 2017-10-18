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

### Hier können einzelne Programme !!! abgewählt !!! werden ###
# z.B. "cp -a expect tmp/"
# wird "# cp -a expect tmp/"
  
# copy expect
cp -a expect tmp/

# copy mc
cp -a mc tmp/

# copy nano
cp -a nano tmp/

###############################################################

# generate archive
cd tmp
tar --owner=root --group=root --exclude=.DS_Store -czvf ../hm-tools-$(cat ../VERSION).tar.gz *
cd ..
rm -rf tmp
