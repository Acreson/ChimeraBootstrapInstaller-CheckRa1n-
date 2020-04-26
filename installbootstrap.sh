#!/bin/bash
if [ "$EUID" -ne 0 ]; then
echo Please run this script as root.
else

echo "安装一些需要的依赖库"
apt update
apt install unzip
echo "确认是否安装了Cydia Substrate/Substitute"
apt remove mobilesubstrate -y
apt remove com.ex.substitute -y
echo "验证完成。创建自定义目录下载所需的所有文件。路径(/User/Documents/ChimeraBootstrap)."
rm -rf /User/Documents/ChimeraBootstrap
mkdir /User/Documents/ChimeraBootstrap
echo "创建完成.下载中 Bootstrap..."
wget https://github.com/Acreson/ChimeraBootstrapInstaller-Checkrain-/raw/master/bootstrap.zip --directory-prefix=/User/Documents/ChimeraBootstrap
unzip /User/Documents/ChimeraBootstrap/bootstrap.zip -d /User/Documents/ChimeraBootstrap/
echo "下载完成. 释放中 Bootstrap to /"
cp -r -f -u /User/Documents/ChimeraBootstrap/bootstrap/* /
echo "释放完成. 下载Chimera环境所需要的debs."
wget https://electrarepo64.coolstar.org/debs/cydia_2.3_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/zip_3.0_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/wget_1.1.9_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/zsh_5.7.1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://github.com/Acreson/ChimeraBootstrapInstaller-Checkrain-/raw/master/debs/apt_1.8.2_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://github.com/Acreson/ChimeraBootstrapInstaller-Checkrain-/raw/master/debs/apt-key_1.8.2-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://github.com/Acreson/ChimeraBootstrapInstaller-Checkrain-/raw/master/debs/apt-lib_1.8.2-sileo6_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/bash_4.4.18-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/bsdprep_1.0_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/bzip2_1.0.6-2_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/coreutils_8.30-1_iphoneos_arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/coreutils-bin_8.30-3_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/darwintools_1-7_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/debianutils_4.8.4-2_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/diffutils_3.7_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/diskdev_cmds_593-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/dpkg_1.19.4-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/file_3.3_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/file-cmds_272.250.1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/findutils_4.7_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/gnupg_1.4.23_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/grep_3.4_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/lzma_5.2.4-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/ncurses_6.1-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/p7zip_16.02_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/profile.d_0-4_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/sed_4.8_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/shell_cmds_203-3_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/tar_1.31-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/text-cmds_99-1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/uikittools_2.0.1_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/unrar_5.5.8_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/unzip_6.0_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/org.coolstar.sileo_1.7.4_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
wget https://electrarepo64.coolstar.org/debs/org.swift.libswift_5.0-electra2_iphoneos-arm.deb --directory-prefix=/User/Documents/ChimeraBootstrap
echo "下载完成. 安装Chimera环境所需要的debs."
dpkg -i --force-all /User/Documents/ChimeraBootstrap/zip_3.0_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/wget_1.1.9_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/zsh_5.7.1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/apt_1.8.2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/apt-key_1.8.2-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/apt-lib_1.8.2-sileo6_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/bash_4.4.18-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/bzip2_1.0.6-2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/bsdprep_1.0_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/coreutils_8.30-1_iphoneos_arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/coreutils-bin_8.30-3_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/darwintools_1-7_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/debianutils_4.8.4-2_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/diffutils_3.7_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/diskdev_cmds_593-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/dpkg_1.19.4-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/file_3.3_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/file-cmds_272.250.1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/findutils_4.7_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/gnupg_1.4.23_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/grep_3.4_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/lzma_5.2.4-1_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/ncurses_6.1-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/p7zip_16.02_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/profile.d_0-4_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/sed_4.8_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/shell_cmds_203-3_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/tar_1.31-1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/text-cmds_99-1_iphoneos-arm.deb 
dpkg -i --force-all /User/Documents/ChimeraBootstrap/uikittools_2.0.1_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/unrar_5.5.8_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/unzip_6.0_iphoneos-arm.deb
echo "安装完成. 运行固件配置中 (./firmware.sh)"
bash /usr/libexec/cydia/firmware.sh
echo "配置完成. 为Chimera的安装准备Sileo"
wget https://raw.githubusercontent.com/Acreson/ChimeraBootstrapInstaller-Checkrain-/master/chimera.sources --directory-prefix=/User/Documents/ChimeraBootstrap
rm -rf /etc/apt/sources.list.d/*
rm -rf /etc/apt/sileo.sources/*
cp /User/Documents/ChimeraBootstrap/chimera.sources /etc/apt/sources.list.d
cp -r -f /User/Documents/ChimeraBootstrap/bootstrap/* /
echo "安装 Sileo & Libswift & Cydia 中。。。"
dpkg -i --force-all /User/Documents/ChimeraBootstrap/cydia_2.3_iphoneos-arm.deb
bash /usr/libexec/cydia/firmware.sh
dpkg -i --force-all /User/Documents/ChimeraBootstrap/org.coolstar.sileo_1.7.4_iphoneos-arm.deb
dpkg -i --force-all /User/Documents/ChimeraBootstrap/org.swift.libswift_5.0-electra2_iphoneos-arm.deb
echo "引导安装完成。安装程序清理安装程序"
rm -rf /Applications/Cydia.app
rm -rf /User/Documents/ChimeraBootstrap
uicache -a
echo "全部完成。感谢您使用安装程序，请打开Sileo，更新所有包"
killall SpringBoard
fi
