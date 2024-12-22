#List Users
cut -d: -f1 /etc/passwd

#Be root
sudo -i

#Add User
sudo adduser new_username


#Remove User
sudo userdel username
sudo rm -r /home/username

#Change Password
sudo passwd username

#Add to root
adduser username sudo
