# ChimeraBootstrapInstaller(CheckRa1n)



整理

PS 官方脚本修改


所以只是一个简单的脚本，安装Chimera Bootsrap在Checkrain。

它是如何工作的?

建议最少3mb/s的互联网网速，国内建议链接VPN

首先恢复rootfs越狱和安装Cydia(它将安装bingner boostrap是的，但我们需要weget)
安装openssh并通过ssh连接到您的iphone不使用新术语使用ssh在WIFI
并插入以下命令
su(然后插入密码，默认为alpine)

wget -O - https://repo.acreson.cn/installbootstrap.sh | bash


FAQ:

A:Checkrain更新会破坏环境吗？

Q:不会。

A:我可以从奇美拉回购升级所有插件吗？

Q:完全可以。

A:我可以恢复这个吗？

Q:完全可以，打开checkra1n，点击restore system就可以了。
