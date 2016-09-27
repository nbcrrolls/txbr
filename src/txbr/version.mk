
VERSION.MK.MASTER = txbr.mk
VERSION.MK.MASTER.DIR = ..
VERSION.MK.INCLUDE = txbr.version.mk

include $(VERSION.MK.INCLUDE)

PKGROOT         = /opt/txbr
NAME            = txbr
VERSION         = $(TXBRVER)
RELEASE         = 0
TARBALL_POSTFIX = tar.gz

RPM.EXTRAS = AutoReq:No

