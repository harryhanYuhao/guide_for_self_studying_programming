# Software 

Computer hardwares are everything that exists physically, and the softwares are everthing else. 
A computer needs **_both_** to function properly.

Examples of softwares include:

1. The application softwares that includes the web browser, pdf viewer, music players, python interpreter, etc, with which a user will interact directly;
1. The desktop environment which will allow you to open, close, resize, and organsize application windows with your mouse and keyboard. All application software will depend on desktop environment. 
1. The device drivers that controls your mouse, keyboard, and other accessories. 
1. The one that manage the cpu, memory, the disk, etc. They are the operating system and system softwares. Every other software depends on them.

This is the _**software hierarchy**_. 

Lower level software provides support for higher level ones. 
At the lowest level is the operarting system, which communicate directly with the hardware. 
At the highest level is application softwares, with which the users interact directly. 

The operating system and other related low-level software are called *__system software__*.

Application software can not access the memory or send a instruction to cpu directly; instead, it make such requests to the system software, which then communicate directly with the hardware, and returns the required informations back to the application software.


## Operating System

Operating system (OS) is likely the most important software. 

Its precise definition is:

> \[Operating system is\] an intermediary between the user of the computer and the computer hardware. [^OS Concept]

To put it in another way, operating system is magical software that allow users to send instruction to the silicon chips by using the keyboard, mouse, etc, and return the chips' respond in human-readable forms.

Operating system, however, is _**not**_:

1. related to the hardware. Just like any other software any operating system, idealy, can run on any hardware
1. related to user interface and appearence. 

### Kernel, the Core of the Operating System

Kernel is the most important part of the operating system that has control of almost everything in the computer. 
It provides many abstract and innovative functionalities every other software relies upon that ensure the security, speed, and stability of the computer. 

Here are some of the typical subsystems of a kernel:

1. Threads and [scheduler](https://docs.kernel.org/scheduler/index.html): Thread is the sequence of instructions that computer shall execute. 
Each computer program lives on its respective thread. 
Some program may spawn multiple threads for parallel execution. 
A cpu can only run a dozen threads concurrently, but thousand of them may be waiting to be executed at a time.
To solve this problem, the scheduler, as part of the kernel, based on the priority of the program, schedules the cpu to run certain threads for a short time, switch to other threads, run for another short time, and switch back. 
In a user's perspective, thousands of programs may seem to run concurrently.
1. [Memory management](https://docs.kernel.org/mm/index.html): It is common that a program requests a large space of memory at the start of execution, but will only use them later, with some memory staying unused for the whole duration.
It is a lot of waste if the memory is allocated at the time of request.
Virtual memory is invented to solve this problem. This is how it works: at the start of execution each thread is allocated an unlimited amount of virtual memory, and only at the time of use these virtual memory is mapped to the phsycial RAM. (The full scheme is much more complicated)

The kernel, as magical as it seems, is written in programming languages just like any other softwares.
The kernels of Windows, Linux, and MacOS are all written in [C](../lets_write_code/c.md) and [assembly language](../lets_write_code/assembly.md).
Currently, there is attempt to write the kernel in [rust](../lets_write_code/rust.md). 

You can check the source code of the most famous open-sourced kernel here: [Linux Kernel](https://www.kernel.org/).

### Other parts of the Operating System

Many utility softwares, besides the kernel, are necessary for a functioning computer. 
These softwares are system softwares. 
Some of the system softwares are considered part of the operating system.

For example:

1. A bootloader to load the operating system when the computer is booting up;
1. Various device drivers for keyboards, mice, usbs, wifi, gpu, etc;
1. The desktop environment, which is a series of software that controls the windows and graphical output of the computer,
1. Some [utility software](https://www.gnu.org/software/binutils/) for assemble the assembly, searching symbols, linking object files, managing archives, etc.

Some other softwares seem even more mundane, but are essential:

1. An application for user login;
1. A software to create and delete files and directory,

Many operating systems ship with these system softwares. As they are incorporated into the OS very closely, many consider them a part of the operating system.

There are much debates on if a software can be considered a system software or an application software. 
For example, web browsers on most operating system is an application software. 
On ChromeOS, however, the browser may be considered an operating system utility software, as every application is launched by the browser, which acts as the only user-interface.  

The following list shows which level of software the user is interacting with when booting up the computer.

1. You turn on the computer by pressing the power button: you are working directly with the hardware;
1. The logo of your computer brand shows up: the motherboard is powered on, kernel is being loaded onto ram (likely init ram file system);
1. The logo of your operating system shows up, sometimes with pages of logs: the kernel is loaded and under initialisation;
1. Start up screen shows up: the operating system is fully loaded; 
1. You entered the username and password: a system software is trying to authenticate your identity;
1. You enterred the desktop and openned up the browser: you are now working with application softwares.

### Examples of Operating System

The most popular operating systems today include Windows, MacOS, and the series of Linux distributions. 
There are, however, many more less known ones. The BSD and Solaris belongs to the Unix family. 
AmigaOS, OS/2, BeOS, RISC OS, MorphOS, and Haiku were famous in their days.
Minix is another one designed for teaching. 

The most popular operating systems for personal computer is MacOS and Windows. 
They are also the only preinstalled operating system for most commercially available computers.

Linux is overwhelmingly more popular, however, among professional servers and super computers. 
Since 2017, all of the top 500 super computer runs on Linux.

Linux is also suitable for personal use.

If you have not used Linux before, you should try it, as it is an objectively superior OS for writing code in most circumstances.

### Choosing an Operating System for Personal Use

The short answer is to choose Linux for coding, Windows to play games, and Mac to waste some money.


Check [Choosing OS](./choosing_os.md) session for a detailed comparison of Linux, MacOS, and Windows.


## Desktop Environment 

Desktop environment is a series of softwares that control the appearence of application windows, how they are arranged, and how they interact with the mouse and the keyboard, i.e., it decides the graphical user interface.

Windows and MacOS are bundled with an uninstallable desktop environment. 
Desktop environment in general, however, are **_not_** dependent on the operating system and can be installed and uninstalled without effecting the OS.

Some examples of desktop environment are Gnome, KDE plasma, and xfce.

There are some innovative desktop environments (or windows manager) that are, although vastly different from the window and drag style in Windows and Mac, equally effective. They are i3, sway, and hyprland.

It is the desktop environment that defines the immediate user experience of a computer. 
As linux systems may have very differet desktop environemnt, the user experience and the GUI among linux system varies dramatically.

## Package Manager

Package management is one of the most complicated tasks in programming.

Think of the following tricky senarios for package management:

### Too much dependencies

The depedency tree could expansive. 
For example, a pacakge may depend on dozens of other packages, which in term depdends on dozens more.
A huge package may have thousands of dependencies in total. [^firefox dependencies]

### Different name, same software

Packages may be bundled differently in different operating systems. 
For example, ALSA (Advanced Linux Sound Architecture) provides kernel sound card drivers and a user space programming library on Linux systems.
The user space library is called `alsa-lib` on Arch. 
`alsa-lib` does not exist in Debian, which is instead included in `libasound2`. 
Such examples are countless, and this is a major issue for software portability.

### Circular Dependency

Circular dependency is when
 a software A depends on B, B depends on C, but C depends on A again. (This forms a circle.)
Circular depedency is rare for application softwares, but every operating system itself has this problem. 
The reason is simple: an operating system is a piece of software that needs the C library to run, but C library itself requires the operating system to work. 
To solve this problem, the operating system softwares has to be compiled and configured with the C library on a working computer, which is bundled into a single file, called the image. 
The image can then be installed into a computer without an operating system. 
Where did the first operating system come from, you may ask. 
In the early days, all programs are written in punched card, recording directly the binary files that a computer can understand!

### Dependency Hell

Dependency hell is the case where softwares B and C depends on two different versions of software A. 
This usually takes place in web, python, data science, and AI programming, where software updates are frequent.
On a single system, usually only one version of the software A can exists. 
Say software A version v1.0 was installed in the computer, and software B depended on it. 
Software A was updated to v2.0, where new features are added and some obsolete features were removed. 
Software C depends on the new features, but software B depends on the obsolete feature: this is a dead end, software A, B, C can not coexists in the same system. 
(The fundamental assumption is that two different versions of the same software can not coexist on the system. 
If they do, they have to be named differently, such as gcc-12, gcc-13, etc.)
One method to solve this problem is virtual environment, in which a group of softwares may run independly from the softwares outside of it. 
Examples of technologies that implement virtual environment include python-venv, docker, and npm,

### The Solution: Package Manager

Package manager was invented to solve these problems. 
Package manager can install, remove, update, and in any other way manage all the packages.
All softwares, programming libraries, scripts, or anything that can be downloaded from the internet can be considered a package and installed by the package manager.

Package manager is an essential tool for programming.

Most Linux distributions have a built-in package manager, which can be regarded as part of the operating system. 
MacOS and Windows, however, do not have an official package manager.
There is third-party package manager homebrew for Mac and winport for Windows, but their effectiveness is questionable.

## Footnotes

[^OS Concept]: Page 1, Silberschatz, A., Galvin, P.B. and Gagne, G. (2018). Operating system concepts. [online] Hoboken, N.J Wiley. Available at: [https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf](https://os.ecci.ucr.ac.cr/slides/Abraham-Silberschatz-Operating-System-Concepts-10th-2018.pdf).

[^firefox dependencies]: Firefox has total of 252 unique dependencies on Arch Linux. Its full dependency tree is [here](https://drive.google.com/file/d/1HaUhjr86dSHMy1IgMASCM5urlQob90K9/view?usp=sharing), which is the output of `pactree firefox`.

[^Internet_Choosing_Hardware]: [CPU benchmark](https://www.CPUbenchmark.net/); [Tom's Hardware](https://www.tomshardware.com/reviews/CPU-hierarchy,4312.html); 

[^OS_Nomenclature]: OS is short for operating system. There are MacOS, ChromeOS, HarmonyOS, etc.

[^Windows_On_Mac]: Macbook made before 2020 running on intel CPU had the option to dual boot windows. 
It is practically impossible to run any system except MacOS for laptops made after 2020 with a M series chip, because Apple is deliberately untransparent on the design of M series chips to hinder developers of other operating system to adapt to Apple products. [Asahi Linux](https://asahilinux.org) seems to be the only barely working exception. 

