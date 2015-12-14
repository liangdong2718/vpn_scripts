#!/bin/bash
cd ~
sudo apt-get install -y vim wget python-pip curl git
sudo pip install shadowsocks
mkdir /etc/shadowsocks/ && touch /etc/shadowsocks/ss.conf
cat > /etc/shadowsocks/ss.conf << EOF
>{
>"servev":"0.0.0.0",
>"server_port":1081,
>"local_port":1080,
>"password":"gxstudent",
>"timeout":600,
>"method":"aes-256-cfb"
>}
>EOF
pushd /etc/shadowsocks && nohup ssserver -c /etc/shadowsocks/ss.conf > /tmp/ss_log 2>&1 & popd
sudo apt-get install linux-image-3.16.0-43-generic

cd ~ && mkdir serverspeed && cd serverspeed && wget http://my.serverspeeder.com/d/ls/serverSpeederInstaller.tar.gz
tar -xf serverSpeederInstaller.tar.gz
sudo update-grub && sudo reboot now

