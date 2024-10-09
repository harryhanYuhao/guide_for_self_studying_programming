# Let There be Linux

> And God said, “Let there be light,” and there was light. -- Genesis 1:3

This chapter will teach you how to install and use Linux. (Linux can not be installed on most Apple's computer, however.)

This is chapter outline:

1. choose and install a Linux distribution;
1. customise the Linux system;
1. navigate the system with the command line;
1. set up developing environment. 

Let us start by choosing and installing a Linux distribution.

## Which Distribution to Use?

For beginners, I recommend [Manjaro](https://manjaro.org/products/download/x86) and [Linux Mint](https://linuxmint.com/), both of which are stable and will work out of the box.

For the more advanturous I recommend Arch, which requires extensive configurations. 

To install the Linux distribution, you need to download the official image.

Manjaro (and many other Linux distribution) have different versions of images with different desktop environment.
(as explained [before](../what_is_computer/software.md#desktop-environment), the operating system is different from the desktop environment.) 
I recommend KDE Plasma and Gnome desktop environment for beginners. 
After installation, you can always install more desktop environment onto your system.

It is best to watch these videos[^videos for de] and check their official website to know more about the different desktop environments.

## Installing Linux

There are four steps to install a Linux distribution. (Besides obtaining the installation image)

1. Etch the installation image into a USB; (This is the most convenient way, to boot an image. An image can also be booted with a CD, netword, etc,)
1. Shutdown the computer, enter the BIOS, and set the proper boot order;
1. Restart the computer, and boot into the installation image;
1. Install the OS with the installation software. Reboot the computer. The installation is complete.

In summary, you have to make a USB a bootable device containting the installation image of a Linux distribution, boot into this distribution, and use its installation software.

Besides the written explanation here, check this video. (To Do: make a video about it).

### Preparing the USB  

After downloading the installation image, you have to etch it into a USB, and make the USB a bootable device. 

The easiest way is to use [balena etcher](https://etcher.balena.io/).

There are other ways to do it. Check this [wiki](https://wiki.archlinux.org/title/USB_flash_installation_medium).

### Set Boot Order 

The next step is to set the boot order in BIOS, so that the computer can boot into the USB.

First shutdown the computer. After which, plugin the USB, and reboot it. 
When the computer is booting up (before the screen was lit), keep pressing the hotkey to open the BIOS or boot order page. 

Different keys needs to be pressed for computers of different manufacturers, but it is likely ESC, F1, F2, F12, or Backspace.
When not sure, search on the internet.

There are now two possibilities:

1. The computer enters the boot order page, and you shall select to boot into the USB;
2. The computer enters bios directly, and you shall look for boot obtions and make USB the highest in boot order. Then exit BIOS and reboot. 

You shall now boot into the live installation media.

### Install the Operating System 

You can explore the live installation media, whose behavior shall be similar to a Linux system installed in the harddrive. 

Look for the OS installation software, open it, and follow the instructions for setting up languages, keyboard, users, etc.  

You will likely be asked to setup the following:

1. Hostname, which is the name of your computer in the local network. Get a good name. You can change the hostname later.
1. User and password. This is the user name and password for you to sign into the computer. 
1. Root user password. Root user is the super user in Linux. You can set it the same as your user password. 
It is a customary practise on Linux to log in through an ordinary user account and only invoke privilege of the root user when needed. (Usually through `sudo`, standing for super user do.)
1. Disk partitions.
For beginners, I recommend to let Linux occupy the whole disk, that is, irrevocably wipe all data in the disk.
Some older computers have two disks, one smaller and faster SSD, another bigger and slower HDD. 
Install Linux onto the SSD. 
1. Swap memory. Swap is a portion of hard disk reserved for memory usage. 
When RAM is closed to full, some less frequently used data is transferred to swap.
When the computer is hibernating, all data on ram is transferred to swap, which will be transferred back to RAM after hibernation.
Swap is optional, but I recommend to __*always*__ use swap, unless your disk space is very small (<100GB). 
The size of sway shall be bigger than RAM. 


## Footnotes

[^videos for de]: [Tiling Windows Manager](https://www.youtube.com/watch?v=rjMZV0jgjL4);
[KDE Plasma](https://www.youtube.com/watch?v=iIxRm8IhFJs);
[Gnome](https://www.youtube.com/watch?v=D0vKSIEQmwo);
[Hyprland](https://www.youtube.com/watch?v=mmRKWgiPulg);
