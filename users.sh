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


# automount
yum install -u autofs

# files: /etc/auto.master
#add the line that will mount in a remote server
/home/guests /etc/auto.guests

vim /etc/auto.guests -> we will not use NFS, this is for over the internet