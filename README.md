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
This is done via `sudo visudo`.

```
[User] ALL=([User]) NOPASSWD: SETENV: sha224:10abe95a5dd53216fc4bad61d54f18c5e989b52ea3df26edb7f1e475 [path]/su.sh
```
_example of sudoers line_

Where [User] is the username written in `sc.config`.
Where [path] is the absolute path to `su.sh`.

See:
+ http://askubuntu.com/questions/246455/how-to-give-nopasswd-access-to-multiple-commands-via-sudoers#246592
+ ~~http://askubuntu.com/questions/155791/how-do-i-sudo-a-command-in-a-script-without-being-asked-for-a-password#155827~~ - is wrong


## checksum su.sh  ##

Current `sha224:10abe95a5dd53216fc4bad61d54f18c5e989b52ea3df26edb7f1e475` for `su.sh`
