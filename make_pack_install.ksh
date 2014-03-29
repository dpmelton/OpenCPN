#!/bin/ksh
###
# Usage:
#   cd build
#   ln -s ../make_pack_install.ksh
#   ./make_pack_install.ksh
##
# LOG:
# 2014.03.29 Created d.melton.
####

cdir=$(pwd)

make package
sudo apt-get remove opencpn
sudo dpkg -i ${cdir}/*.deb

##end###
