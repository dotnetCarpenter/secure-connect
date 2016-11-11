Secure Connect
==============

**Initial plan:**

1. get su - without without hardcode pw in plain text
2. take down wifi
3. macchanger -r wls2
4. take up wifi
5. connect to predator


## get su ##

The trick is to set `su.sh` to run as super suer without password, if I am the user.
This is done  in `visudo`.

See: http://askubuntu.com/questions/155791/how-do-i-sudo-a-command-in-a-script-without-being-asked-for-a-password#155827

