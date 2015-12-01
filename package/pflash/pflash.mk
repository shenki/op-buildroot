################################################################################
#
# pflash
#
################################################################################

PFLASH_VERSION = skiboot-5.2.4

PFLASH_SITE = $(call github,open-power,skiboot,$(PFLASH_VERSION))
PFLASH_INSTALL_STAGING = YES
PFLASH_LICENSE = Apache 2.0
PFLASH_LICENSE_FILE = LICENCE

PFLASH_MAKE_OPTS += CROSS_COMPILE="$(TARGET_CROSS)" \
		    PFLASH_VERSION=$(PFLASH_VERSION) \
		    DESTDIR=$(TARGET_DIR) \
		    -C $(@D)/external/pflash \

# A makefile bug causes recent versions of pflash to fail setting CC and LD
# based on CROSS_COMPILE. Set CC and LD to remain compatible with those
# versions.
PFLASH_MAKE_OPTS += CC=$(TARGET_CC) LD=$(TARGET_LD)

define PFLASH_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(PFLASH_MAKE_OPTS) all
endef

define PFLASH_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) $(PFLASH_MAKE_OPTS) install
endef

$(eval $(generic-package))
