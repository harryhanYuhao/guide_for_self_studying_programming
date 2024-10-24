# Linux on Comment Line

<!-- TODO: (Video tutorial available for this session). -->
<!-- TODO: -->

You can navigate a gnome or KED Linux system with only GUI (Graphical User Interface), explore, configure, execute all tasks by clicking the buttons. 

GUI is not the only method of controlling the computer.
Contrary to it is the command line interface (CLI), that is, to control the computer by typing commands in the termial.

CLI has unique advantages:

1. CLI can boost you productivity.
1. CLI can help you automate tasks.
1. Some workflow may only work with CLI, such as connecting to a remote server.
1. Many utilities tools were developped with CLI in mind, which may be more convenient to use than their GUI counterparts. 
Examples are `make`, `gcc`, `git`, `find`, `grep`, `tmux`, etc.

For most modern computers the command line is only accessible via a shell which usually runs in a virtual terminal.
The virual terminal[^terminal history] is usually called the terminal emulater, or just 'the terminal', which process the input and the output, and is usually opened in a window.

A shell, in contrary, is command interpreter that executes the commands a user types into the terminal.

The shell and the terminal are two pieces of software that work together to provide the command line interface. 
Some sources may wrongly use 'shell' or 'terminal' to denote the command line interface itself.

In this guide, we will focus on Bash, the Bourne Again SHell, which is the default shell in most Linux systems and one of the most widely used. 

The choice of terminal emulater, in comparison, depends on tastes. 
You can use any terminal emulater.

## Learn Bash 

You can master the command line in bash with six steps:

1. [Start](./linux_on_command_line/intro_terminal.md)
the terminal, and identify which shell is running;
1. Learn [common shell commands](./linux_on_command_line/common_commands.md),
including `man`, `apropos`, `echo`, `cat`, `wc`, `ping`, etc;
1. [Navigating](./linux_on_command_line/navigating_fs.md)
, viewing, creating, renaming, and moving files and directories;
1. Use the [package manger](./linux_on_command_line/package_manger.md) to
install new command line utilities and learn to use them.
1. [Miscellenous](./linux_on_command_line/advanced.md)
advanced concpets including variable, pipeline, PATH, bashrc, alias, input/output redirection, globs pattern, etc.
1. Write [bash scripts](../lets_write_code/bash.md).

Subsessions of this chapter will guide you through the first five steps.
Writing bash scripts will be introduced in [Let's Write Code](../lets_write_code/bash.md) chapter.

## References 

1. [Effective Shell](https://effective-shell.com/)
1. [Gnu Bash Manual](https://www.gnu.org/software/bash/manual/)
1. [Advanced Bash Scripting Guides](https://tldp.org/LDP/abs/html/)

## Footnotes 

[^terminal history]: In the early days, computers are huge, expensive, and are only used in big coorporations. 
There will be one central computer, called the server, and many users can use it simultaneously in different rooms via a terminal, which looks like a small TV with keyboard.
The terminal will register user input, send it to the server, and return the server's response.
In 2024, personal computers are common, and there is no need for a physical terminal.
The custom of using the terminal, however, is handed down, and users instead rely on a virtual terminal, which imitates the behavior of the physical terminal, to control the computer.
See [wikipedia entry](https://en.wikipedia.org/wiki/Computer_terminal) for more.
