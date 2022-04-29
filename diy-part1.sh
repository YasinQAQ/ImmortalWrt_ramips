  
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
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Delete a feed source
#sed -i '2d' feeds.conf.default
#sed -i '$d' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
#sed -i '$a src-git luci https://github.com/Lienol/openwrt-luci' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default
sed -i '$a src-git custom https://github.com/kiddin9/openwrt-packages' feeds.conf.default
sed -i '$a src-git bypass https://github.com/kiddin9/openwrt-bypass' feeds.conf.default
#sed -i '$a src-git smartdns-le https://github.com/garypang13/smartdns-le' feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small8 https://github.com/kenzok8/small-package' feeds.conf.default
#sed -i '$a src-git litte https://github.com/kenzok8/litte' feeds.conf.default
#sed -i '$a src-git maxminddb https://github.com/jerrykuku/lua-maxminddb.git' feeds.conf.default
#sed -i '$a src-git vssr https://github.com/jerrykuku/luci-app-vssr.git' feeds.conf.default
# Add Theme
#sed -i '$a src-git infi https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom' feeds.conf.default
#sed -i '$a src-git infi https://github.com/kenzok8/luci-theme-ifit' feeds.conf.default
git clone https://github.com/kenzok8/luci-theme-ifit.git package/lean/luci-theme-ifit
