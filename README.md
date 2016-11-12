Secure Connect
==============

Gnome only - you need to install `macchanger` and have setup a
VPN in [network-manager](https://wiki.gnome.org/Projects/NetworkManager/).

```sh
sudo apt install -y macchanger
```

## Configuration ##

Config is in `sc.config` (for now you have to create it in this directory).

```sh
# User name for a privileged account - see "get su"
user=username
# The name for VPN as registred in your NetworkManager
vpn=vnpname
```


Notes
=====

## get su ##

The trick is to set `su.sh` to run as super user without password, if I am the user.
This is done  in `visudo`.

See: http://askubuntu.com/questions/155791/how-do-i-sudo-a-command-in-a-script-without-being-asked-for-a-password#155827
