################################################################################
#
# mboxbridge
#
################################################################################

MBOXBRIDGE_VERSION = ebbfce5ea76905fb20410104819791e5bad17892
MBOXBRIDGE_SITE = $(call github,openbmc,mboxbridge,$(MBOXBRIDGE_VERSION))
MBOXBRIDGE_LICENSE = Apache-2.0
MBOXBRIDGE_LICENSE_FILES = COPYING
MBOXBRIDGE_AUTORECONF = YES
MBOXBRIDGE_DEPENDENCIES = host-autoconf-archive

define MBOXBRIDGE_PATCH_M4
	mkdir -p $(@D)/m4
endef
MBOXBRIDGE_POST_PATCH_HOOKS += PDBG_PATCH_M4

$(eval $(autotools-package))
