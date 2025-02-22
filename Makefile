include $(TOPDIR)/rules.mk

LUCI_THEME:=deeppurple
LUCI_TITLE:=Custom Dark Mode Theme for OpenWRT
LUCI_DEPENDS:=+luci-base
PKG_VERSION:=0.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-theme-deeppurple
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Themes
  TITLE:=$(LUCI_TITLE)
  DEPENDS:=$(LUCI_DEPENDS)
endef

define Package/luci-theme-deeppurple/install
  $(INSTALL_DIR) $(1)/www/luci-static/deeppurple
  $(CP) ./htdocs/* $(1)/www/luci-static/deeppurple/
endef

$(eval $(call BuildPackage,luci-theme-deeppurple))
