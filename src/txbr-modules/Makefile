#
REDHAT.ROOT = $(CURDIR)/../../

-include $(ROCKSROOT)/etc/Rules.mk
include Rules.mk
include $(NBCRDEVEL)/NBCR.mk

pretar:: $(VERSION.MK.INCLUDE)

$(VERSION.MK.INCLUDE): 
	if [ -f $(VERSION.MK.MASTER.DIR)/$(VERSION.MK.MASTER) ]; then \
		/bin/cp $(VERSION.MK.MASTER.DIR)/$(VERSION.MK.MASTER) $@; \
	fi

MODULEFILES = txbr.module txbr.version

ADDSED = \
	-e s%@TXBRDIR@%$(TXBRDIR)%g 

%: %.in
	$(SED) $(SEDSCRIPT) $(ADDSED) $^ > $@

build: $(MODULEFILES)

install:: modulefile-install

clean::
	rm -rf $(NAME).spec.* 
	rm -rf $(VERSION.MK.INCLUDE)
	rm -rf $(MODULEFILES)

