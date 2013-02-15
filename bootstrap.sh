#!/bin/bash
#
# $Id: bootstrap.sh,v 1.6 2013/02/15 00:20:46 clem Exp $
#
# @Copyright@
# @Copyright@
#
#

. $ROLLSROOT/etc/bootstrap-functions.sh

YumCache=/var/cache/yum/
YumCacheBase=$YumCache/base/packages/
YumCacheEpel=$YumCache/epel/packages/

BasePakg="qt3-devel gmp gmp-devel atlas atlas-devel t1lib dvipng"
EpelPakg="cln cln-devel ginac ginac-devel cmake"




mkdir -p RPMS/x86_64

yum --enablerepo=base install $BasePakg
for i in $BasePakg; do 
	cp $YumCacheBase/$i*rpm  src/RPMS/;
done

yum --enablerepo=base install $EpelPakg
for i in $EpelPakg; do 
        cp $YumCacheEpel/$i*rpm  src/RPMS;
done


compile_and_install opt-scipy
compile_and_install opt-matplotlib
compile_and_install opt-sympy
compile_and_install opt-swiginac
compile_and_install opt-Pyrex
compile opencv
install OpenCV
compile_and_install txbr-fftw3
compile_and_install txbr-fftw3f
compile_and_install imod


