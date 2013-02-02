#!/bin/bash
#
# $Id: bootstrap.sh,v 1.3 2013/02/02 01:27:46 clem Exp $
#
# @Copyright@
# @Copyright@
#
#

. $ROLLSROOT/etc/bootstrap-functions.sh

install atlas
install atlas-devel
compile_and_install opt-scipy

yum --enablerepo=base install qt-devel qt3-devel
