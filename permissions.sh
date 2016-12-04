# ownership list
cd /home
ls -l 
drwx------ -> rwx for owner, nothing for group, nothing for rest

# create with root dirs:
drwxr-xr-x. -> default

# change groups
mkdir account
mkdir sales
chgrp sales sales
chgrp account account
ls -l

drwxr-xr-x. 2 root sales   6 Nov 13 20:30 sales

# chown
chown lisa account

# permissions
read = 4
write = 2
execute = 1

chmod 770 -> execute, w, r for owner, group and others

## Access COntrol
# to use ACl, acl must to be mount on  /etc/fstab or systemd
# tune2fs -> 