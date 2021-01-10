#!/bin/bash
pause(){
		read -rep "press [Enter] key to continue or refresh menu"
}

one(){
	wget "https://www.eastcoast.hosting/Windows9/Win_9_x64_EN_US-V1.97Plus.7z" -A 7z -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a win.download.log.$(date +%F)& open https://www.eastcoast.hosting/Windows9/
        pause
}
 
two(){
	wget "https://releases.ubuntu.com/bionic/ubuntu-18.04.5-desktop-amd64.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a ubuntu.download.log.$(date +%F)& open https://help.ubuntu.com/stable/ubuntu-help/index.html
        pause
}
three(){
        wget "http://mirrors.evowise.com/linuxmint/stable/20.1/linuxmint-20.1-cinnamon-64bit.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a mint.download.log.$(date +%F)& open https://www.linuxmint.com/documentation.php 
        pause
}
four(){
        wget wget "http://mirror.rackspace.com/archlinux/iso/2020.11.01/archlinux-2020.11.01-x86_64.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a arch.download.log.$(date +%F)& open https://wiki.archlinux.org/
        pause
}
five(){
        wget "https://download.fedoraproject.org/pub/fedora/linux/releases/33/Workstation/x86_64/iso/Fedora-Workstation-Live-x86_64-33-1.2.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a fedora.download.log.$(date +%F)& open https://docs.fedoraproject.org/en-US/fedora/f33/
        pause
}
six(){
        wget "http://mirrors.advancedhosters.com/centos/8.3.2011/isos/x86_64/CentOS-8.3.2011-x86_64-dvd1.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a centos.download.log.$(date +%F)& open https://docs.centos.org/en-US/8-docs/
        pause
}
seven(){
        wget "http://download.opensuse.org/distribution/leap/15.2/iso/openSUSE-Leap-15.2-DVD-x86_64.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a opensuse.download.log.$(date +%F)& open https://doc.opensuse.org/
        pause
}
eight(){
        wget "https://bouncer.gentoo.org/fetch/root/all/releases/amd64/autobuilds/20201125T214503Z/install-amd64-minimal-20201125T214503Z.iso" -A iso -nc -P ISOS.$(date +%F) -c -e robots=off --no-check-certificate --no-cache -w 2 -U "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:63.0) Gecko/20100101 Firefox/63.0" -r -nH --cut-dirs=7 -np -R "index.html*" -a gentoo.download.log.$(date +%F)& open https://www.gentoo.org/support/documentation/
        pause
}
nine(){
        kill $(pgrep wget); pgrep wget; rm -rf ISOS.$(date +%F)/ *.download.log.$(date +%F) 
        pause
}
# function to display menus
show_menus() {
	touch win.download.log.$(date +%F)
	touch ubuntu.download.log.$(date +%F)
	touch mint.download.log.$(date +%F)
	touch arch.download.log.$(date +%F)
	touch fedora.download.log.$(date +%F)
	touch centos.download.log.$(date +%F)
	touch opensuse.download.log.$(date +%F)
	touch gentoo.download.log.$(date +%F)
	mkdir ISOS.$(date +%F)
	clear	
	echo "Select an ISO, most recent as of 2021-01-10"
	echo "You're currently running $(uname -mpsr)"
	echo "Saved to ISOS.$(date +%F)"
	echo "Current distros: $(ls ISOS.$(date +%F))"
	echo "Your disk is at $(df -h | awk -F" " '{ print $5}' | sed -n '2p')"	
	echo " 1. Windows 9 $(tail -n2 win.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 2. Ubuntu 18.04.5 LTS $(tail -n2 ubuntu.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')" 
	echo " 3. Linux Mint 20.1 Ulyssa Cinnamon Edition $(tail -n2 mint.download.log.$(date +%F) | awk -F" " '{ print $7,$9}') "
	echo " 4. Arch $(tail -n2 arch.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 5. Fedora 33 Workstation $(tail -n2 fedora.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 6. Centos 8 $(tail -n2 centos.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 7. OpenSuse Leap 15.2 $(tail -n2 opensuse.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 8. Gentoo $(tail -n2 gentoo.download.log.$(date +%F) | awk -F" " '{ print $7,$9}')"
	echo " 9. Kill Running Downloads:(NOTE: this will kill all instances of wget and blow away any in progress or downloaded ISOS)"
}
read_options(){
	local choice
	read -rp "Choose 1-9, CTRL-C to exit" choice
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
		10) ten ;;
		*) echo "ಠ_ಠ" && sleep 2
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
