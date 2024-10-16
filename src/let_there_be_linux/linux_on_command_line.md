# Linux on Comment Line

(Video tutorial available for this session). TODO

You can navigate a gnome or KED Linux system with only GUI (Graphical User Interface), explore, configure, execute all tasks by clicking the buttons. 

Contrary to Graphical user interface is the command line interface (CLI), that is, to control the computer by typing commands in the termial.

CLI has unique advantages:

1. Some softwares may only work with CLI, such as a remote server.
1. CLI can help you automate tasks.
1. Many utilities tools were developped with CLI in mind, which may be more convenient to use than their GUI counterparts. 
Examples are `make`, `gcc`, `git`, `find`, `grep`, etc.
1. CLI is, in many cases, easy and faster to use.

In all modern computers, the command line is only accessible via a shell which runs in a virtual terminal.
The virual terminal[^terminal history] is usually called the terminal emulater, or just 'the terminal', which process the input and the output, and is usually opened in a window.

A shell, in contrary, is command interpreter that executes the commands a user inputs into the terminal.

The shell and the terminal are two pieces of software that work together to provide the command line interface. 
Some sources may wrongly use 'shell' or 'terminal' to denote the command line interface itself.

In this guide, we will focus on Bash, the Bourne Again SHell, which is the default shell in most Linux systems and one of the most widely used. 
Anything would work for the terminal.

## Learn Bash 

The following passage is a pragmatic guide to teach you the command line on Bash in six steps:

1. [Start](./linux_on_command_line/intro_terminal.md)
the terminal, and identify which shell is running;
1. [Common shell commands](./linux_on_command_line/common_commands.md),
including `man`, `apropos`, `echo`, `cat`, `wc`, `ping`, etc;
1. [Navigating](./linux_on_command_line/navigating_fs.md)
directories, viewing, creating, renaming, and moving files and directories;
1. Use the [package manger](./linux_on_command_line/package_manger.md) to
install new command line utilities and learn to use them.
1. [Miscellenous](./linux_on_command_line/advanced.md)
advanced concpets including variable, pipeline, PATH, bashrc, alias, input/output redirection, globs pattern, etc.
1. Write [bash scripts](../lets_write_code/bash.md).

The first five steps are introduced in subsession of this chapter.
Writing bash scripts will be introduced in [Let's Write Code](../lets_write_code/bash.md) chapter.

## References 

1. [Gnu Bash Manual](https://www.gnu.org/software/bash/manual/)
1. [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_01_01.html)
1. [Advanced Bash Scripting Guides](https://tldp.org/LDP/abs/html/)
1. [woolegdge Bash Guide](https://mywiki.wooledge.org/BashGuide)

## Footnotes 

[^terminal history]: to do
