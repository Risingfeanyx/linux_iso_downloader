<h1>
A quick linux downloader for a few important isos. 
</h1>
#todo: implement version checking; wget most recent version; hash checking, alert when DL is done.

Downloads using wget (for now)
Shows progress bar inside menu
Opens version specific manpages for each distro/installation guide.
Shows free disk space; where the ISOS are saving/which ones are already saved, and your current OS. 

Makes for light reading while ISO is DL'ing


```
git clone https://github.com/Risingfeanyx/linux_iso_downloader.git
cd linux_iso_downloader
/bin/bash -c "$(curl -fsSL  https://raw.githubusercontent.com/Risingfeanyx/linux_iso_downloader/main/main.sh)"
```
