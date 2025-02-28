include $(TOPDIR)/rules.mk

PKG_NAME:=gl-b3000-uboot-scr
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL= https://github.com/TheRootED24/gl-b3000-uboot-scr
PKG_SOURCE_DATE:=2025-02-28

PKG_SOURCE_VERSION:=bd6c2be49c4216c9281c56d5db81f5eedb4a7e19
PKG_MIRROR_HASH:=c292ed6e9c3d50edac4d7bb64b994594989eaff47e6aad5d29541cdc3d9b9547

PKG_MAINTAINER:=Scott Mercer <TheRootED24@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/gl-b3000-uboot-scr
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Boot Loaders
	TITLE:= ** SELECT <help> FOR PROPER INSTALLATION **
	URL:=https://github.com/TheRootED24/gl-b3000-uboot-scr.git
endef

define Package/gl-b3000-uboot-scr/description
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
	$(INSTALL_DIR) $(1)/usr/include/gl-b3000-uboot-scr
	$(CP) $(PKG_BUILD_DIR)/*.scr \
	$(1)/usr/include/gl-b3000-uboot-scr/
endef

$(eval $(call BuildPackage,gl-b3000-uboot-scr))
