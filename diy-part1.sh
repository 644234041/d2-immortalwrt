#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source

# sed -i '/^src-git luci/d' feeds.conf.default
# echo 'src-git packages https://github.com/immortalwrt/packages.git' >> feeds.conf.default
# echo 'src-git routing https://github.com/openwrt/routing.git' >> feeds.conf.default
# echo 'src-git telephony https://github.com/openwrt/telephony.git' >> feeds.conf.default


# Add a feed source
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;luci' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall;packages' >>feeds.conf.default
# echo 'src-git NeteaseMusic https://github.com/cnsilvan/luci-app-unblockneteasemusic.git' >>feeds.conf.default
# git clone https://github.com/ilxp/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
# git clone -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
# svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-adbyby-plus package/luci-app-adbyby-plus
