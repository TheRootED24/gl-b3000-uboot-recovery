include $(TOPDIR)/rules.mk

PKG_NAME:=uboot-scr
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL= https://github.com/TheRootED24/uboot-scr.git
PKG_SOURCE_DATE:=2025-02-24
			
PKG_SOURCE_VERSION:=
PKG_MIRROR_HASH:=

PKG_MAINTAINER:=Scott Mercer <TheRootED24@gmail.com>
PKG_LICENSE:=GPL-3.0
PKG_LICENSE_FILES:=LICENSE

define Package/uboot-scr
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Boot Loaders
  TITLE:= Uboot flash.scr Files
  URL:=http://www.denx.de/wiki/U-Boot
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/uboot-scr
	$(CP) \
		$(PKG_BUILD_DIR)/src/*.scr \
		$(1)/usr/include/uboot-scr/ \

	$(CP) $(PKG_BUILD_DIR)/src/*.scr \
	$(1)/tmp/uboot.scr
endef
$(eval $(call BuildPackage,uboot-scr))
