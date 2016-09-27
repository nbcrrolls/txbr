VERSION.MK.MASTER = txbr.mk
VERSION.MK.MASTER.DIR = ..
VERSION.MK.INCLUDE = txbr.version.mk
include $(VERSION.MK.INCLUDE)

PACKAGE     = txbr
CATEGORY    = applications
NAME        = $(PACKAGE)-module
VERSION     = $(TXBRVER)
RELEASE     = 0
PKGROOT     = /opt/modulefiles/$(CATEGORY)/$(PACKAGE)

TXBRDIR   = /opt/txbr

RPM.REQUIRES    = environment-modules
RPM.EXTRAS  = AutoReq:No
