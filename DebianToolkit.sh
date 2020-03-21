#!/bin/bash

#Author: d4t4s3c
#Email:  d4t4s3c@protonmail.com
#GitHub: www.github.com/d4t4s3c

#colors
b="\033[1;37m"
r="\033[1;31m"
v="\033[1;32m"
a="\033[1;33m"
nc="\e[0m"

#var
si=✔
no=✘

function checkroot(){
	     echo ""
	     echo -e "$a check root user $nc"
	     sleep 4
    if [ "$(id -u)" == "0" ]; then
	     echo ""
	     echo -e " $b[$v$si$b] root $nc"
	     sleep 4
	     echo ""
    else
       echo ""
	     echo -e " $b[$r$no$b] root $nc"
	     sleep 4
	     echo ""
	     echo -e "$r EXITING $nc"
	     sleep 4
	     echo ""
	    exit
    fi	
}

function banner (){
        echo ""
        echo -e "$b ┌═════════════════════════════════════════════════════════════════════┐"
        echo -e "$b ║$v ·▄▄▄▄  ▄▄▄ .▄▄▄▄· ▪   ▄▄▄·  ▐ ▄ ▄▄▄▄▄            ▄▄▌  ▄ •▄ ▪  ▄▄▄▄▄ $b║"
        echo -e "$b ║$v ██▪ ██ ▀▄.▀·▐█ ▀█▪██ ▐█ ▀█ •█▌▐█•██  ▪     ▪     ██•  █▌▄▌▪██ •██   $b║"
        echo -e "$b ║$v ▐█· ▐█▌▐▀▀▪▄▐█▀▀█▄▐█·▄█▀▀█ ▐█▐▐▌ ▐█.▪ ▄█▀▄  ▄█▀▄ ██▪  ▐▀▀▄·▐█· ▐█.▪ $b║"
        echo -e "$b ║$v ██. ██ ▐█▄▄▌██▄▪▐█▐█▌▐█ ▪▐▌██▐█▌ ▐█▌·▐█▌.▐▌▐█▌.▐▌▐█▌▐▌▐█.█▌▐█▌ ▐█▌· $b║"
        echo -e "$b ║$v ▀▀▀▀▀•  ▀▀▀ ·▀▀▀▀ ▀▀▀ ▀  ▀ ▀▀ █▪ ▀▀▀  ▀█▄▀▪ ▀█▄▀▪.▀▀▀ ·▀  ▀▀▀▀ ▀▀▀  $b║"
        echo -e "$b ║$r                  Author  $b: $a d4t4s3c                                 $b║"
        echo -e "$b ║$r                  Email   $b: $a d4t4s3c@protonmail.com                  $b║"
        echo -e "$b ║$r                  GitHub  $b: $a www.github.com/d4t4s3c                  $b║"
        echo -e "$b └═════════════════════════════════════════════════════════════════════┘$nc"
        echo ""
        sleep 4
}

tput civis
clear
checkroot
clear
banner

echo ""
echo -e "$a Installing tools in Debian..$nc"
echo ""
sleep 4
echo -e "  [$v$si$b] git"
echo ""
apt-get install -y git
echo ""
sleep 2
echo -e "  [$v$si$b] xterm"
echo ""
sleep 2
apt-get install -y xterm
echo ""
echo -e "  [$v$si$b] aircrack-ng"
echo ""
sleep 2
apt-get install -y aircrack-ng 
echo ""
echo -e "  [$v$si$b] guest additions (virtualbox)"
echo ""
sleep 2
apt-get install -y build-essential dkms
cd box
chmod +x VBoxLinuxAdditions.run
./VBoxLinuxAdditions.run
echo ""     
echo -e "  [$v$si$b] metasploit"
echo ""
sleep 2
wget https://downloads.metasploit.com/data/releases/metasploit-latest-linux-x64-installer.run
chmod +x metasploit-latest-linux-x64-installer.run
xterm -hold -e "./metasploit-latest-linux-x64-installer.run" &
echo ""
echo -e "  [$v$si$b] wordlist rockyou"
echo ""
sleep 2
wget https://github.com/brannondorsey/naive-hashcat/releases/download/data/rockyou.txt
cd ..
echo ""                    
echo -e "  [$v$si$b] netcat"
echo ""
sleep 2
apt-get install -y netcat
echo ""             
echo -e "  [$v$si$b] sublime text"
echo ""
sleep 2
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
echo ""
echo -e "  [$v$si$b] terminator"
echo ""
sleep 2
apt-get install -y terminator
echo ""           
echo -e "  [$v$si$b] nmap"
echo ""
sleep 2
apt-get install -y nmap
echo ""           
echo -e "  [$v$si$b] hydra"
echo ""
sleep 2
apt-get install -y hydra
echo ""                    
echo -e "  [$v$si$b] ftp"
echo ""
sleep 2
apt-get install -y ftp
echo ""                    
echo -e "  [$v$si$b] putty"
echo ""
sleep 2
apt-get install -y putty
echo ""
sleep 2                       
echo -e "  [$v$si$b] zenity"
echo ""
sleep 2
apt-get install -y zenity
echo ""               
echo -e "  [$v$si$b] netdiscover"
echo ""
sleep 2
apt-get install -y netdiscover
echo ""                
echo -e "  [$v$si$b] net-tools"
echo ""
sleep 2
apt-get install -y net-tools
echo ""             
echo -e "  [$v$si$b] wine"
echo ""
sleep 2
apt-get install -y wine
dpkg --add-architecture i386 && apt-get install -y wine32
apt-get install -y wine32
echo ""                      
echo -e "  [$v$si$b] angry ip scanner"
echo ""
sleep 2
cd box
dpkg -i ipscan_3.6.2_amd64.deb
cd ..
echo ""              
echo -e "  [$v$si$b] set"
echo ""
sleep 2
apt-get install -y set
echo ""    
echo -e "  [$v$si$b] apache2"
echo ""
sleep 2
apt-get install -y apache2
echo ""
echo -e "  [$v$si$b] dirbuster"
echo ""
sleep 2
apt-get install -y dirbuster
echo ""
echo -e "  [$v$si$b] wpscan"
echo ""
sleep 2
apt-get install -y wpscan
echo ""
echo -e "  [$v$si$b] locate"
echo ""
sleep 2
apt-get install -y locate
updatedb
echo ""
echo -e "  [$v$si$b] cadaver"
echo ""
sleep 2
apt-get install -y cadaver
echo ""
echo -e "  [$v$si$b] recon-ng"
echo ""
sleep 2
apt-get install -y recon-ng
echo ""
echo -e "  [$v$si$b] curl"
echo ""
sleep 2
apt-get install -y curl
echo ""
echo -e "  [$v$si$b] dmitry"
echo ""
sleep 2
apt-get install -y dmitry
echo ""
echo -e "  [$v$si$b] crunch"
echo ""
sleep 2
apt-get install -y crunch
echo ""
echo -e "  [$v$si$b] masscan"
echo ""
sleep 2
apt-get install -y masscan
echo ""
echo -e "  [$v$si$b] sqlmap"
echo ""
sleep 2
apt-get install -y sqlmap
echo ""
echo -e "  [$v$si$b] putty"
echo ""
sleep 2
apt-get install -y putty
echo ""
echo -e "  [$v$si$b] wfuzz"
echo ""
sleep 2
apt-get install -y wfuzz
echo ""
echo -e "  [$v$si$b] wireshark"
echo ""
sleep 2
apt-get install -y wireshark
echo ""
echo -e "  [$v$si$b] dirb"
echo ""
sleep 2
apt-get install -y dirb
echo -e "  [$v$si$b] nikto"
echo ""
apt-get install nikto
echo ""
sleep 2
echo -e "  [$v$si$b] patator"
echo ""
sleep 2
apt-get install -y patator
echo "" 
echo -e "  [$v$si$b] medusa"
echo ""
sleep 2
apt-get install -y medusa
echo ""
echo -e "  [$v$si$b] cewl"
echo ""
sleep 2
apt-get install -y cewl
echo "" 
echo -e "  [$v$si$b] openvpn"
echo ""
sleep 2
apt-get install -y openvpn
echo ""
echo -e "  [$v$si$b] nomacs"
echo ""
sleep 2
apt-get install -y nomacs
echo ""
echo -e "  [$v$si$b] maltego"
echo ""
sleep 2
apt-get install -y maltego
echo ""
sleep 2
echo -e "  [$v$si$b] smbmap"
echo ""
sleep 2
apt-get install -y smbmap
echo ""
echo -e "  [$v$si$b] smbclient"
echo ""
sleep 2
apt-get install -y smbclient
echo ""
echo -e "  [$v$si$b] enum4linux"
echo ""
sleep 2
apt-get install -y enum4linux
echo ""
echo -e "  [$v$si$b] lsd"
echo ""
sleep 2
cd box
dpkg -i lsd_0.14.0_amd64.deb
echo ""
echo -e "  [$v$si$b] bat"
echo ""
sleep 2
dpkg -i bat_0.12.1_amd64.deb
cd ..
echo ""
echo -e "  [$v$si$b] kismet"
echo ""
sleep 2
apt-get install -y kismet
echo ""
echo -e "  [$v$si$b] simple screen recorder"
echo ""
sleep 2
apt-get install -y simplescreenrecorder
echo ""
echo -e "  [$v$si$b] custom .bashrc"
echo ""
sleep 2
cd /root
mv .bashrc .bashrcBACKUP
cd DebianToolkit
cp .bashrc /root
echo ""
echo -e "  [$v$si$b] reboot"
sleep 5
echo ""
tput cnorm
reboot