
# Edit COnfig File
sudo nano /etc/ssh/sshd_config

# PermitRootLogin no -> yes
# PasswordAuthentication no -> yes

# Remove Override
rm -rf /etc/ssh/sshd_config.d/*

#set root password
sudo passwd root

#restart
sudo service ssh restart

sudo reboot

#Test
ssh root@13.48.5.208

