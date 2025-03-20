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

sudo du -sh /var/* | sort -rh | head -5