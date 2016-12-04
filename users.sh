# Users Commands
# get it and group ownership
id user 

# adduser

adduser username 

# by default, owner group is username. 
# groups can be change on the config file change this in
vim /etc/group -> account:x:1005:lisa,Lisa

# or modify group (append new ones)
usermod Lisa -aG sales

# etc/shadow -> password hashes in RHEL
# etc/login.defs -> defaults for password creation
# other defaults
 ⚡ ⚙ root@centos1  /etc/default  cat useradd
# useradd defaults file
GROUP=100
HOME=/home
INACTIVE=-1
EXPIRE=
SHELL=/bin/bash
SKEL=/etc/skel
CREATE_MAIL_SPOOL=yes

# home directory is created based on /etc/skel

## LDAP, use better authconfig-tui

authconfig --enableldap --enableldapauth 
--ldapserver=ldap://server.rhatcertification.com --ldapbasedn="dc=rhatcertification,dc=co" 
--enableldaptls --ldaploadcacert=ftp://server.rhatcertification.com/pub/slapd.pem --update


# automount.
# Create a local NFS server
yum install -u autofs

# files: /etc/auto.master
#add the line that will mount in a remote server
(remote machine will hosts the ldap users)
/home/guests /etc/auto.guests

vim /etc/auto.guests -> we will not use NFS, this is for over the internet

# configure exports
/data         -rw *(rw,no_root_squash)

# create /data in the server
# start bfs
systemctl start nfs
#
showmount -e localhost

# to test we can create a mountmount localhost:/data /mnt
mount localhost:/data /mnt
cd /mnt -> ls

# Automount local fs
# vim /etc/auto.master
/nfsserver      /etc/auto.nfsserver
# config
vim /etc/auto.nfsserver
blah    -rw     localhost:/data

systemctl restart autofs

#nslcd

PAM -> Plugin auto modules

cd /etc/pam.d 
-> files to authentication services
