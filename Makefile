include $(TOPDIR)/rules.mk

PKG_NAME:=ipq50xx-uboot-webui-recovery
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL= https://github.com/TheRootED24/ipq50xx-uboot-webui-recovery
PKG_SOURCE_DATE:=2025-02-28

PKG_SOURCE_VERSION:=7a3009b676d66168f9a8f438d558dc816858c850
PKG_MIRROR_HASH:=c292ed6e9c3d50edac4d7bb64b994594989eaff47e6aad5d29541cdc3d9b9547

PKG_MAINTAINER:=Scott Mercer <TheRootED24@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

include $(INCLUDE_DIR)/package.mk

define Package/ipq50xx-uboot-webui-recovery
	SECTION:=utils
	CATEGORY:=Utilities
	SUBMENU:=Boot Loaders
	TITLE:= ** SELECT <help> FOR PROPER INSTALLATION **
	URL:=https://github.com/TheRootED24/gl-b3000-uboot-recovery.git
endef

define Package/ipq50xx-uboot-webui-recovery/description
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
	$(INSTALL_DIR) $(1)/usr/include/ipq50xx-uboot-webui-recovery
	$(CP) $(PKG_BUILD_DIR)/*.scr \
	$(1)/usr/include/ipq50xx-uboot-webui-recovery/
endef

$(eval $(call BuildPackage,ipq50xx-uboot-webui-recovery))
