# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/aheig/OpenWrt-x86_64/blob/main/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/aheig/OpenWrt-x86_64.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/aheig/OpenWrt-x86_64.svg?style=flat-square&label=Forks&logo=github)

使用GitHub Actions构建OpenWrt

[源作者-P3TERX-更加精细的教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## 用法

- 点击 [Use this template](https://github.com/aheig/OpenWrt-x86_64/generate) 按钮来创建一个新的存储库。
- 编辑`build-openwrt.yml`文件的REPO_URL值自定义OpenWrt母源
- 编辑`diy-part1.sh`可以自定义第三方插件源，编辑`diy-part2.sh`自定义默认管理IP地址等
- 在自己的仓库点击 Star 直接编译固件
- 在触发工作流程后，在 Actions 页面等待执行到 “到 Actions 的 SSH 连接” 步骤，会出现下面的信息。

```
To connect to this session copy-n-paste the following into a terminal or browser:

ssh Y26QeagDtsPXp2mT6me5cnMRd@nyc1.tmate.io

https://tmate.io/t/Y26QeagDtsPXp2mT6me5cnMRd
```

- 复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl + C 即可）
- 输入`cd openwrt && make menuconfig`回车，使用GUI配置
- 完成后按快捷键Ctrl+D或执行exit命令退出，后续编译工作将自动进行。

小提示: 固件目录下有个config.seed文件，如果你需要再次编译可以使用它。

等候时间: 默认连接30分钟后会断开并终止编译工作流程，防止资源浪费与封号风险。如果你想解除这个限制，可以根据提示操作，但导致的一切后果请自行承担。

## 提示

创建.config文件和构建OpenWrt固件可能需要很长时间。因此，在创建存储库以构建自己的固件之前，您可以通过在GitHub中进行搜索Actions-Openwrt来检查是否已经构建了其他满足您需要的固件。

将您所构建固件的一些元信息（例如固件体系结构和已安装的软件包）添加到存储库简介中，这将节省其他人的时间。

## 致谢

- [P3TERX](https://p3terx.com/)
- [Microsoft](https://www.microsoft.com)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub](https://github.com)
- [GitHub Actions](https://github.com/features/actions)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cisco](https://www.cisco.com/)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [fw876](https://github.com/fw876)
- [lienol](https://github.com/Lienol)
- [kenzok8](https://github.com/kenzok8)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- 等大神们

## 许可

[MIT](https://github.com/aheig/OpenWrt-x86_64/blob/main/LICENSE) © AHEIG
