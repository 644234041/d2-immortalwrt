#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 修改主机名
sed -i 's/ImmortalWrt/Newifi/g' package/base-files/files/bin/config_generate

# Modify the version number
# sed -i "s/OpenWrt /P3TERX build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify the version number
# sed -i "s/OpenWrt /P3TERX build $(TZ=UTC-8 date "+%Y.%m.%d") @ OpenWrt /g" package/lean/default-settings/files/zzz-default-settings

# # Add kernel build user
# [ -z $(grep "CONFIG_KERNEL_BUILD_USER=" .config) ] &&
#     echo 'CONFIG_KERNEL_BUILD_USER="P3TERX"' >>.config ||
#     sed -i 's@\(CONFIG_KERNEL_BUILD_USER=\).*@\1$"P3TERX"@' .config

# # Add kernel build domain
# [ -z $(grep "CONFIG_KERNEL_BUILD_DOMAIN=" .config) ] &&
#     echo 'CONFIG_KERNEL_BUILD_DOMAIN="GitHub Actions"' >>.config ||
#     sed -i 's@\(CONFIG_KERNEL_BUILD_DOMAIN=\).*@\1$"GitHub Actions"@' .config

# Modify default theme
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 删除老argon
# rm -rf package/lean/luci-theme-argon
# 拉取argon主题
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
