
include $(TOPDIR)/rules.mk

PKG_NAME:=gl-b3000-uboot-recovery
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL= https://github.com/TheRootED24/gl-b3000-uboot-recovery.git
PKG_SOURCE_DATE:=2025-02-28

PKG_SOURCE_VERSION:=ec482d9e5b0dde14a66ab308978f6a3ff425f439
PKG_MIRROR_HASH:=c292ed6e9c3d50edac4d7bb64b994594989eaff47e6aad5d29541cdc3d9b9547

PKG_MAINTAINER:=Scott Mercer <TheRootED24@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/gl-b3000-uboot-recovery
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Boot Loaders
	TITLE:= ** SELECT <help> FOR PROPER INSTALLATION **
	URL:=https://github.com/TheRootED24/gl-b3000-uboot-recovery.git
endef

define Package/gl-b3000-uboot-recovery/description
  This package contains the uboot scr file needed to
  enable uboot webui recovery and firmware upgrades
  for OpenWrt Firmwares.

          ** REQUIRED INSTALLATION NOTES **

  * This package MUST be included <*> in the firmware to
  effectively enable uboot webui recovery and upgrades
  for Openwrt.

  * Installation of this package post-build will have
  zero effect and will not enable uboot upgrades and
  recovery options for Openwrt Firmwares.
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/uboot-scr-scripts
	$(CP) $(PKG_BUILD_DIR)/*.scr \
	$(1)/usr/include/uboot-scr-scripts/
endef

$(eval $(call BuildPackage,gl-b3000-uboot-recovery))
