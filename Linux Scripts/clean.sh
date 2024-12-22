sudo apt update && sudo apt upgrade -y

sudo apt clean
sudo apt-get clean

sudo apt autoremove -y
sudo apt autoclean

sudo apt install deborphan
sudo deborphan | xargs sudo apt-get -y remove --purge

rm -rf ~/.local/share/Trash/*
rm -rf ~/.cache/*
sudo rm -rf /tmp/*
sudo rm -rf /var/tmp/*

rm -rf ~/.cache/mozilla/firefox/
rm -rf ~/.cache/google-chrome/

sudo journalctl --vacuum-time=3d

echo $(dpkg --list | grep linux-image | awk '{ print $2 }' | sort -V | sed -n '/'`uname -r`'/q;p') $(dpkg --list | grep linux-headers | awk '{ print $2 }' | sort -V | sed -n '/'"$(uname -r | sed "s/\([0-9.-]*\)-\([^0-9]\+\)/\1/")"'/q;p') | xargs sudo apt-get -y purge



sudo updatedb
