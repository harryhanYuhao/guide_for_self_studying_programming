# Command Line Workflows

Almost everything that can be done with GUI can also be done with CLI. 
Here is a selected list of common Linux Workflows with CLI, and some esoteric examples. 

For more examples, please consult stackoverflow and chatgpt.

## Common Workflows 

### Common Tasks

#### Controlling the computer

Some of the following tools may not be reinstalled on your system. 
Install them with your package manager.

```sh
$ brightnessctl set 10%-  # increase the brightness of screen by 10%
$ amixer set Master 5%+  # increase audio by 5%. Only works on pulseaudio systems.
$ gammastep -O 4000  # set the display color tempreture to 4000K. (For night light)
```

The desktop environment usually also exposes APIs to control the desktop. 
Here are some examples for Gnome:

```sh
$ gsettings set org.gnome.desktop.background picture-uri "file:///path/to/your/image.jpg"
```

Other system configurations, such as controlling the mouse speed, set the display screen and resolutions, are controlled by the desktop environment.
Check their documentations for how to configure them.

### Uncommon, but useful examples

#### Flash iso image onto a USB and make it a bootable device

The first step of installing an operating system is to flash its installation image onto a usb. 
This can be done with one command on Linux.


First, find the path of your USB.

```sh
$ lsblk  # short for list block device
sda           8:0    1  58.6G  0 disk 
├─sda1        8:1    1   4.4G  0 part 
├─sda2        8:2    1   4.9M  0 part 
├─sda3        8:3    1   300K  0 part 
└─sda4        8:4    1  54.2G  0 part 
nvme0n1     259:0    0 476.9G  0 disk 
├─nvme0n1p1 259:1    0     1G  0 part /boot
├─nvme0n1p2 259:2    0    16G  0 part [SWAP]
└─nvme0n1p3 259:3    0 459.9G  0 part /
```

<details>
<summary>
What are the outputs of `lsblk`?
</summary>

The physical disk is presented as block device on Linux. 
Linux, like Unix, adopts the philosophy of "everything is a file".
The block devices are presented as files under `/dev` directory.

`/dev/sda` is the path of the block device representing the usb. 
`/dev/sda1` for the first partition of the usb.
</details>

USB devices are usually named as `sda` , `sdb`, etc.
It can be distinguished by its capacity; or just compare the output of `lsblk` before and after plugin a USB.

Assuming the path for the required image is `live-disk.iso`, the following command will flash it to the usb and make it automatically a bootable device.

**_Note_**, the destination is not `/dev/sda1`, but `/dev/sda`, without the number.

```sh
$ cp live-disk.iso /dev/sda  # This may take a while.
```

There are also other methods; check this [arch wiki](https://wiki.archlinux.org/title/USB_flash_installation_medium).

<details>
<summary>
Make a bootable device on Windows or on Mac is more complicated.
</summary>

The easist method on Windows or on Mac is to download a media creation tool, such as balena etcher, and let it do the job. 

Media creation tools may be more than 200 MB in size, and many time they do not work as well as the `cp` command.

</details>

### Esoteric Examples 


- Internet Browser in terminal: browsh
- View image in terminal: tiv (terminal image viewr)

```sh
$ beep # make a beep sound.
```
