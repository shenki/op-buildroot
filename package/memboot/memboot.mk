################################################################################
#
# memboot
#
################################################################################

MEMBOOT_VERSION = skiboot-5.2.0

MEMBOOT_SITE = $(call github,open-power,skiboot,$(MEMBOOT_VERSION))
MEMBOOT_INSTALL_STAGING = YES
MEMBOOT_LICENSE = Apache 2.0
MEMBOOT_LICENSE_FILE = LICENCE

MEMBOOT_MAKE_OPTS += -C $(@D)/external/memboot

define MEMBOOT_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) install -m 0755 memboot $(prefix)/bin
endef

$(eval $(generic-package))
