# generate key
ssh-keygen 

# sign first time, it will add the public key to known_hosts
ssh user@server

# copy key, in can use another port in RH if needed

ssh-copy-id user@server

# login no password
ssh user@server