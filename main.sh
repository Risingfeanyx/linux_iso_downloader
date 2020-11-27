#!/bin/bash
RED='\033[0;41;30m'
STD='\033[0;0;39m'

pause(){
  read -rp "Press [Enter] key to continue..."
}

one(){
	wget https://cdimage.debian.org/debian-cd/current/amd64/iso-dvd/debian-10.6.0-amd64-DVD-1.iso
        pause
}
 
two(){
	wget https://releases.ubuntu.com/20.04.1/ubuntu-20.04.1-desktop-amd64.iso
        pause
}
three(){
        wgethttp://mirrors.evowise.com/linuxmint/stable/20/linuxmint-20-cinnamon-64bit.iso
        pause
}
four(){
        wget http://mirror.rackspace.com/archlinux/iso/2020.11.01/archlinux-2020.11.01-x86_64.iso
        pause
}
five(){
        wget https://download.fedoraproject.org/pub/fedora/linux/releases/33/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-33-1.2.iso
        pause
}
six(){
        wget http://mirror.vcu.edu/pub/gnu_linux/centos/8.2.2004/isos/x86_64/CentOS-8.2.2004-x86_64-boot.iso
        pause
}
seven(){
        wget http://download.opensuse.org/distribution/leap/15.2/iso/openSUSE-Leap-15.2-DVD-x86_64.iso
        pause
}
eight(){
        wget https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/20201125T214503Z/install-amd64-minimal-20201125T214503Z.iso
        pause
}
nine(){
        wget https://software-download.microsoft.com/pr/Win10_20H2_English_x64.iso?
}

# function to display menus
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~"	
	echo " Select an ISO"
	echo "  CTRL-C to exit "
	echo "~~~~~~~~~~~~~~~~~~~~~~~~~"
	echo " 1. Debian"
	echo " 2. Ubuntu"
	echo " 3. Linux Mint Cinnamon Edition"
	echo " 4. Arch"
	echo " 5. Fedora"
	echo " 6. Centos"
	echo " 7. OpenSuse"
	echo " 8 Gentoo"
	echo " 9 Windows 10 English 64 Bit"
}
read_options(){
	local choice
	read -rp "Enter choice [ 1 - 9] " choice
	case $choice in
		1) one ;;
		2) two ;;
		3) three ;;
		4) four ;;
		5) five ;;
		6) six ;;
		7) seven ;;
		8) eight ;;
		9) nine ;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
 
# ----------------------------------------------
# Step #3: Trap CTRL+C, CTRL+Z and quit singles
# ----------------------------------------------
#trap '' SIGINT SIGQUIT SIGTSTP
 
# -----------------------------------
# Step #4: Main logic - infinite loop
# ------------------------------------
while true
do
 
	show_menus
	read_options
done
