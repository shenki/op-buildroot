################################################################################
#
# pdbg
#
################################################################################

PDBG_VERSION = 7afa1dd3956c549b5aca461b8b7492fd8a975709

PDBG_SITE = $(call github,open-power,pdbg,$(PDBG_VERSION))
PDBG_LICENSE = Apache 2.0
PDBG_LICENSE_FILES = COPYING

$(eval $(autotools-package))
