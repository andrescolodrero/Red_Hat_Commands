# lsof examples -> LIst open files (and everything is a file in *nix)

lsof -t > show my processes 
(sudo) lsof -i > show network connections as netstat
 lsof -i 6 > show only IPV6 traffic
 lsof -iTCP -> show only TCP traffic
 
 show SSH connections
 lsof -i: ssh
 
 connections TO a host
 lsof -i@10.0.0.1
 
 connetion to host with port
 lsof -i@10.0.0.1:22
 
 Files open for an user
 lsof -u username
 
 Kill all process from a user
 
 kill -9 'lsof -t -u user'
 
 Files and network connections open for a process
 
 lsof -c httpd
 
 Process using a file or directory
 
lsof /var/log/messages
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF     NODE NAME
rsyslogd 646 root    4w   REG    8,1   265005 34311540 /var/log/messages

 
