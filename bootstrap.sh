#!/bin/bash
#
# $Id: bootstrap.sh,v 1.6 2013/02/15 00:20:46 clem Exp $
#
# @Copyright@
# @Copyright@
#
#

. $ROLLSROOT/etc/bootstrap-functions.sh

BasePakg="qt3-devel gmp gmp-devel atlas atlas-devel t1lib dvipng cmake libgomp"
EpelPakg="cln cln-devel ginac ginac-devel"

# install base packages
yum install $BasePakg

# install libjpeg-turbo, needed for compiling and installing qt
yum install libjpeg-turbo.x86_64

# download and install epel packages
RpmDir=./src/RPMS
yumdownloader --enablerepo=epel --destdir=$RpmDir --archlist=x86_64 $EpelPakg
for i in $EpelPakg; do 
        yum install $RpmDir/$i*.x86_64.rpm;
done

# compile and install prerequisites 
compile_and_install opt-scipy
compile_and_install opt-dateutil
compile_and_install opt-pytz
compile_and_install opt-pyparsing
compile_and_install opt-matplotlib
compile_and_install opt-sympy
compile_and_install opt-swiginac
compile_and_install opt-Pyrex
compile_and_install opt-configobj
compile_and_install opt-imaging
compile_and_install opt-psutil
compile_and_install opencv
compile_and_install txbr-fftw3
compile_and_install txbr-qt
compile_and_install imod

