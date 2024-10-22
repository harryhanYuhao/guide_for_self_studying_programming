# Pacakge Manager 

## Package manager on Linux

Differet Linux distros are equipped with different package managers, but their functionailities are similar. 

Arch and Arch derived distros, including Manjaro, Garuda, and EndeavorOS use pacman.
Debian and its derivatives, including Ubuntu and Linux mint, uses apt. 
Red hat and related distros use dnf. 

Download software and its dependencies just need one line:

```sh
$ sudo pacman -S neovim  # Arch, Manjaro, EndeavorOS, etc
$ sudo apt install neovim  # Debian, Ubuntu, Linux Mint, etc
$ sudo dnf install neovim  # RHEL, Centos, Fedora, etc
$ sudo snap install neovim  # Ubuntu
```

These commands will install the package system-wise and will need `sudo` privilege, requiring you to enter current user's password.
The password will not be shown, but will be recorded.
Just type the password and press enter when done. 
You shall successfully install neovim, a terminal-based text editor.

If you do not have `sudo` privilege, the command will be refuted. 
Check FAQ for how to grant `sudo` privilege for user.

This is how to remove a package

```sh
$ sudo pacman -R neovim  # Arch, Manjaro, EndeavorOS, etc 
$ sudo apt remove neovim  # Debian, Ubuntu, Linux Mint, etc 
$ sudo dnf remove neovim  # RHEL, Centos, Fedora, etc
$ sudo snap remove neovim  # Ubuntu
```

Sometimes a package manager will not allow you to remove certain packages, as they are the dependencies of other packages.
If you insist on removing it, your system may break.

For system upgrades:

```sh
$ sudo pacman -Syu  # Arch, Manjaro, EndeavorOS, etc 
$ sudo apt update && sudo apt upgrade  # Debian, Ubuntu, Linux Mint, etc 
$ sudo dnf update  # RHEL, Centos, Fedora, etc
```

Certain packages are registered with different names for different package mangers.
For example, the `libgl` library is called `libgl1-mesa-glx` for aptand `mesa-libGL` for dnf. 
`libgl` is not listed as a single package but included in `glut` for pacman. 

The easist way to find the name for your desired package is to search on Google.

You can check more usages of package manager [here](https://wiki.archlinux.org/title/Pacman/Rosetta).

## Package Manager on MacOS and Windows

<a href="https://brew.sh/" target="_blank">Homebrew</a>
is a third-party package manager for Mac,
<a href="https://github.com/microsoft/winget-cli" target="_blank">Winget</a>,
the one for Windows. 
The overall experience using them, however, is inferior compared to Linux's.
