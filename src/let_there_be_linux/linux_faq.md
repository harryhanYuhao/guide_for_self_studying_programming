# FAQ

## Sudo Privilege 

If using a modern OS installer when installing the OS, you shall be grated sudo privilege automatically. 

If not, you can log in as a root user, and manually grant sudo access to a normal user.

```sh
$ su -  # login as root user. Enter root password
$ visudo  # this will open /etc/sudoer in vi
$ nano /etc/sudoers  
```

Enter this line into `/etc/sudoers`

```
<username> ALL=(ALL:ALL) ALL
```

You need to remember the root user to follow this procedure.
If you do not know the root user password, try [this](https://en.wikibooks.org/wiki/Linux_Guide/Reset_a_forgotten_root_password).
Otherwise, the only option left is restalling the OS.

*__NOTE__*: This procedure is only for a personal OS, but is a bad practise in general.
If you are a system manager, you shall set the user groups with appropriate privileges and organise users into proper groups.
