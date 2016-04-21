# $Id: Makefile,v 1.1 2013/01/24 20:12:58 clem Exp $
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
# Revision 1.1  2013/01/24 20:12:58  clem
# remaning fftw in txbr-fftw3
#
# Revision 1.2  2013/01/24 20:09:15  clem
# fftw3 shared compiled
#
# Revision 1.1  2012/10/23 01:50:48  nadya
# initial partial check in prerequisites
#

REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk


build:
	gunzip -c $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) | $(TAR) -xf -
	mv $(ARCHIVENAME)-$(VERSION) $(ARCHIVENAME)-$(VERSION)-single;				\
	( 							\
		cd $(ARCHIVENAME)-$(VERSION)-single;				\
		./configure --prefix=$(PKGROOT) --enable-shared;	\
		$(MAKE);					\
	)
	gunzip -c $(ARCHIVENAME)-$(VERSION).$(TARBALL_POSTFIX) | $(TAR) -xf -
	mv $(ARCHIVENAME)-$(VERSION) $(ARCHIVENAME)-$(VERSION)-double;				\
	( 							\
		cd $(ARCHIVENAME)-$(VERSION)-double;				\
		./configure --prefix=$(PKGROOT) --enable-float --enable-shared;	\
		$(MAKE);					\
	)
	
install::
	mkdir -p $(ROOT)/$(PKGROOT)/
	(							\
		cd $(ARCHIVENAME)-$(VERSION)-single;				\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) install;\
	)
	(							\
		cd $(ARCHIVENAME)-$(VERSION)-double;				\
		$(MAKE) prefix=$(ROOT)/$(PKGROOT) install;\
	)

clean::
	rm -rf $(ARCHIVENAME)-$(VERSION)-single
	rm -rf $(ARCHIVENAME)-$(VERSION)-double
