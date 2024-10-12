# Linux on Comment Line

You can navigate a gnome or KED Linux system with only GUI(Graphical User Interface), explore and configure all of its features by only clicking the buttons. 

Contrary to Graphical user interface is the command line interface (CLI), that is, to control the computer by typing commands in the termial.

CLI has unique advantages:

1. Some softwares may only have CLI. For example, a remote server.
1. CLI can help you automate tasks.
1. Many utilities tools were developped with CLI on mind, which may be more convenient to use than their GUI counterparts. 
Examples are `make`, `gcc`, `git`, `find`, `grep`, etc.
1. CLI is, in many cases, easy and faster to use.

In all modern computers, the command line is only accessible in a virtual terminal in a a shell. 
The virual terminal is usually called t'the terminal'.
A shell is command interpreter that executes the commands a user type in the terminal.

In this guide, we will focus on Bash, the Bourne Again SHell, which is default shell in most Linux systems and one of the most widely used. 

## Learn Bash 

You can master the command line on Bash by learning the following six things:

1. Start the terminal, and identify which shell is running;
1. Common shell commands, including `man`, `echo`, `cat`, `wc`, `ping`, etc;
1. Navigating directories, viewing, creating, renaming, and moving files and directories;
1. How to use the package manger. Install new command line utilities and learn to use them.
1. Variable, pipeline, PATH, bashrc, alias, out redirection, etc.
1. Write bash scripts.

### Start the terminal

All Linux systems are preinstalled with a shell.

If you are using Gnome or KDE, search the 'terminal' app.
On i3, sway, and hyprland, use "mod+enter" to open the default terminal. 

The terminal probably looks like this:

```
[hostname@username ]$ 
```

This is the terminal prompt. Commands enterred are shown after the prompt and are executed after pressing Enter.

Try hello world:

```
$ echo Hello, World!
Hello World!
```

## References 

1. [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_01_01.html)
1. [Advanced Bash Scripting Guides](https://tldp.org/LDP/abs/html/)

[]
