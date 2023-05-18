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
# 下面这条不知道行不行
# echo 'src/gz openwrt_kiddin9 https://op.supes.top/packages/mipsel_24kc' >> feeds.conf.default

# rm -rf feeds/luci/applications/luci-app-adbyby-plus
# rm -rf feeds/luci/themes/luci-theme-argonne



# Add a feed source
# # # echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall;luci' >>feeds.conf.default
# # # echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall;packages' >>feeds.conf.default
# git clone https://github.com/ilxp/luci-app-ikoolproxy.git package/luci-app-ikoolproxy
# git clone -b master https://github.com/UnblockNeteaseMusic/luci-app-unblockneteasemusic.git package/luci-app-unblockneteasemusic
# svn co https://github.com/coolsnowwolf/luci/trunk/applications/luci-app-adbyby-plus package/luci-app-adbyby-plus
# echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >> feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >> feeds.conf.default
# # echo 'src-git small8 https://github.com/kenzok8/small-package' >> feeds.conf.default
# # 是最后注释掉的  36行是最后添加的 应该用一个36行就可以了 
