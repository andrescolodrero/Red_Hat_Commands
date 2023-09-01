# Users Commands
#If an user has different groups, we can change the primary group with command newgrp
id ricardo -> user dev, admin
newgrp admin
touch bar
ls -l
ricardo admin ö Jun

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


#

