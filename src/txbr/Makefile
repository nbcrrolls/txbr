# $Id: Makefile,v 1.4 2013/02/09 00:20:38 clem Exp $
#
# @Copyright@
# 
# 				Rocks(r)
# 		         www.rocksclusters.org
# 		         version 5.5 (Mamba)
# 		         version 6.0 (Mamba)
# 
# Copyright (c) 2000 - 2012 The Regents of the University of California.
# All rights reserved.	
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
# notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
# notice unmodified and in its entirety, this list of conditions and the
# following disclaimer in the documentation and/or other materials provided 
# with the distribution.
# 
# 3. All advertising and press materials, printed or electronic, mentioning
# features or use of this software must display the following acknowledgement: 
# 
# 	"This product includes software developed by the Rocks(r)
# 	Cluster Group at the San Diego Supercomputer Center at the
# 	University of California, San Diego and its contributors."
# 
# 4. Except as permitted for the purposes of acknowledgment in paragraph 3,
# neither the name or logo of this software nor the names of its
# authors may be used to endorse or promote products derived from this
# software without specific prior written permission.  The name of the
# software includes the following terms, and any derivatives thereof:
# "Rocks", "Rocks Clusters", and "Avalanche Installer".  For licensing of 
# the associated name, interested parties should contact Technology 
# Transfer & Intellectual Property Services, University of California, 
# San Diego, 9500 Gilman Drive, Mail Code 0910, La Jolla, CA 92093-0910, 
# Ph: (858) 534-5815, FAX: (858) 534-7345, E-MAIL:invent@ucsd.edu
# 
# THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS''
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
# BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
# WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
# OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
# IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
# 
# @Copyright@
#
# $Log: Makefile,v $
# Revision 1.4  2013/02/09 00:20:38  clem
# adding env variable to run txbr
#
# Revision 1.3  2013/01/29 02:04:53  clem
# fixes for the new location of the imod
#
# trying to get libpython static in the shared object but it doesnot work yet
#
# Revision 1.2  2013/01/25 21:55:52  clem
# First version of compiling txbr
#
# it is just compiling, it is still missing several deps
#
# Revision 1.1  2012/10/23 01:50:48  nadya
# initial partial check in prerequisites
#

REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk

PY.PATH  =  /opt/python/bin/python
PACKAGE_NAME = TxBR

build:
	gunzip -c $(PACKAGE_NAME)-$(VERSION)-dev.tar.gz | $(TAR) -xf -
	( 							\
		cp setup.cfg $(PACKAGE_NAME);			\
		cd $(PACKAGE_NAME);				\
		$(PY.PATH) setup.py build; 			\
	)
	
install::
	(							\
		cd $(PACKAGE_NAME);				\
		$(PY.PATH) setup.py install --root=$(ROOT)/;	\
	)
	ln -s  $(PACKAGE_NAME)-$(VERSION)-dev $(ROOT)/$(PKGROOT)/$(NAME)
	mkdir -p $(ROOT)/etc/profile.d/
	install txbr-profile.sh $(ROOT)/etc/profile.d/
	install txbr-profile.csh $(ROOT)/etc/profile.d/


clean::
	rm -rf $(NAME)-$(VERSION)
