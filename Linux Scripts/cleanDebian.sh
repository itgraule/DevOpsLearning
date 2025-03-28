# Clea https://ac1d.medium.com/how-to-clean-kali-os-3f5b8c5ceed6  

sudo apt update && sudo apt upgrade -y

sudo apt clean

sudo apt autoremove -y
sudo apt autoclean

sudo apt install deborphan
sudo deborphan | xargs sudo apt-get -y remove --purge

rm -rf ~/.local/share/Trash/*

rm -rf ~/.cache/*

sudo journalctl --vacuum-time=3d

sudo rm -rf /tmp/*

rm -rf ~/Library/Application\ Support/Code/Cache/* 
rm -rf ~/Library/Application\ Support/Code/CachedData/* 

rm -rf ~/.config/Code/CachedExtensionVSIXs/* 

sudo du -sh /var/* | sort -rh | head -5

sudo find / -mount -type f -size +100M -exec du -h {} \; | sort -n