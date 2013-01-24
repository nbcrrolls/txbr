#!/bin/bash
#
# $Id: bootstrap.sh,v 1.2 2013/01/24 17:30:53 clem Exp $
#
# @Copyright@
# @Copyright@
#
#

. $ROLLSROOT/etc/bootstrap-functions.sh

install atlas
install atlas-devel
compile_and_install opt-scipy


