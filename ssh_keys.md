# Generate key-pair
ssh-keygen
ssh-keygen -f .ssh/key2 # for other. use passphase

Generated SSH keys are stored by default in the .ssh subdirectory of your home directory. To function correctly, the private key must be readable and writable only by the user that it belongs to (octal permissions 600). The public key is not secure, and anyone on the system might also be able to read it (octal permissions 6440)

# SSH Client config
Allow to have configurations with different keys or hostnames.

vim .ssh/config 
user@host ~]$ cat ~/.ssh/config
host servera
     HostName                      servera.example.com
     User                          usera
     IdentityFile                  ~/.ssh/id_rsa_servera

host serverb
     HostName                      serverb.example.com
     User                          userb
     IdentityFile                  ~/.ssh/id_rsa_serverb
