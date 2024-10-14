# Linux on Comment Line

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

1. Start the terminal, and identify which shell is running;
1. Common shell commands, including `man`, `apropos`, `echo`, `cat`, `wc`, `ping`, etc;
1. Navigating directories, viewing, creating, renaming, and moving files and directories;
1. How to use the package manger. Install new command line utilities and learn to use them.
1. Variable, pipeline, PATH, bashrc, alias, input/output redirection, globs pattern, etc.
1. Write bash scripts.

See references for more details.

### Start the terminal

Most Linux systems are preinstalled with at least a shell and a terminal.

If you are using Gnome or KDE, search the 'terminal' app.
On i3, sway, and hyprland, use "mod+enter" to open the default terminal. 

The shell runs in the terminal, which shall look like this:

```
[hostname@username ]$ 
```

This is the shell prompt. 
Commands entered are shown after the prompt and are executed after pressing Enter.

All prompt are abbreviated to a single `$` hereafter.

Try hello world:

```sh
$ echo "Hello, World!" # echo displays a line of text
Hello World!  # texts after hashtap signs are ignored
```

It may happen that you default shell is not bash. 
Check with following commands:

```sh
$ echo $0  
bash # your current shell is bash
$ echo $SHELL  # $SHELL is a bash variable
/bin/bash  # your default shell is bash
```

If your default shell is not bash, you can change the default shell with `chsh`.

```sh
$ chsh -s /bin/bash  # will prompt you to enter password.
```

Effect will take place after next log in (or just reboot).

### Common Shell Commands 

#### `echo`, `cat`, and Output Redirection

As seen in the previous section, `echo` display the text.

`echo` can also print bash variables, which is preceded by the dollar sign, `$`.

```sh
$ echo $XDG_CURRENT_DESKTOP  # may not work on certain distros
sway  # I am using sway windows manager. TODO: check other distros
$ MY_VAR="YES!"  # Variable definition. Strictly no space besides `=`!
$ echo $MY_VAR
YES!
$ echo $EDITOR 
nvim  # default editor
```

`cat` can be used to show contents of a file.

The system informations on most Linux systems are stored in the file `/etc/os-release`.

```sh
$ cat /etc/os-release  # May not work on same distributions
NAME="Manjaro Linux"
PRETTY_NAME="Manjaro Linux"
ID=manjaro
ID_LIKE=arch
BUILD_ID=rolling
ANSI_COLOR="32;1;24;144;200"
HOME_URL="https://manjaro.org/"
DOCUMENTATION_URL="https://wiki.manjaro.org/"
SUPPORT_URL="https://forum.manjaro.org/"
BUG_REPORT_URL="https://docs.manjaro.org/reporting-bugs/"
PRIVACY_POLICY_URL="https://manjaro.org/privacy-policy/"
LOGO=manjarolinux
```

If `cat /etc/os-release` does not work, try `cat /etc/*release`. `*` is a glob wild card explained later. If none of them works, try `hostnamectl`. `ctl` stands for control.

A file can be created with `echo` and output redirection `>`, and redirection with append `>>`. 

```sh
$ echo "Hello" > hello.txt 
$ cat hello.txt 
Hello
$ echo "World" >> hello.txt 
$ cat hello.txt 
Hello 
World
```

The behavior of the commands can be modified with flags. 

```sh
$ cat -n hello.txt  # number lines in output
$ cat --help  # show cat help docs
```

Most commands will offer `--help` and `--version` flags to show short help documents and version. 
This is not a requirement, but a custom most programmers follow when creating the command.

#### Getting Help with `man`

`--help` flags will only show a short help message. 
For detailed manual, one should use `man <command>`.

Try `man echo`, `man cat`, and `man man`.

Man pages can be navigated by arrow keys or by scrolling. 
To exit it, press `q`. 
To search for a pattern, enter `/<pattern>`.
Press `h` for helps on navigating the man pages.

Arch user may need to manually install the manual pages by `pacman -S man-db`.

`man` also offers manuals for system calls and library calls in different sections.

Check `man 3 open` and `man 2 open`, which will show the manual for `open` in section 2 and three.

#### `apropos`, `less`, and pipe

If you have forgotten the name of a command, use `apropos <keywords>` to search relevent commands related to `<keywords>`. 

`apropos` will usually output a long list. 
You can display its content interactly by piping it to `less`:

```sh
apropos <keywords> | less
```

Navigating the contents presented by `less` is the same as navigating the man page. (Indeed, man pages likely use `less`).

`|` is the pipe keywords, which redirect the output of the previous command to be the input of the next command. 

#### Other commands

You shall check out these commands: `pwd`, `ls`

### Navigating the File System

#### Create and Navigate Directories and Files

When openning a terminal, the default working directory is your home directory.
Check you current working directory by `pwd`

```sh
$ pwd
/home/<username>
```

Check files in current directories with `ls`:

```sh
$ ls 
Desktop      Documents  fork   Pictures  research  Screenshots  Templates
didacticism  Downloads  Music  Public    sandbox   study        Videos
```

You can also use `cd`, short for change directory, to change to home directory:

```sh
$ cd ~
$ cd $HOME  # same as above
```

The symbol `~` and variable `$HOME` will be automatically expanded into your home directory path. 
Check `echo ~` and `echo $HOME`.

Make a new directory with `mkdir`:

```sh
$ mkdir scratch
```

To make multiple new directory, use `-p`, parent flag:

```sh 
$ mkdir -p scratch/try/new_dir; cd scratch/try/new_dir
$ pwd
/home/<username>/scratch/try/new_dir
```

`;` is bash command separator.

You can make an empty file by `touch`

```sh
$ touch empty.txt
$ ls 
empty.txt
```


You can also use relative path to navigate directories: 

```sh
$ cd ..  # go to the parent directory
$ cd ../..  # go to the parent of the parent
```

#### `ls`

`ls` is likely one of the most frequently used command. 

In Linux, files or directories that begin with a dot, `.`, will be hidden. 

```sh
$ touch .secret
$ ls  # prints nothing
```

To view hidden files, pass `-a`:

```sh
$ ls -a
. .. .secret
```

Here, `.` is the current directory, `..` is the previous directory.

You can use `-l` flags to list details

```sh
$ ls -al 
drwxr-xr-x  4 virtus virtus 4096 Oct 14 21:28 .
drwx------ 27 virtus virtus 4096 Oct 14 21:29 ..
-rw-r--r--  1 virtus virtus    0 Oct 14 21:28 .secret
```

The `drwxr-xr-x` is the file type and permission. 
`d` means directory. `rwx` means read, write, and execute for the owner, group, and others (will be explained later).

You can list files in order of time created with `-t`, and in reverse order with `-r`:

```sh
$ ls -lt  # list by time created, newest first
$ ls -ltr  # list by time created in reverse order
```

## References 

1. [Gnu Bash Manual](https://www.gnu.org/software/bash/manual/)
1. [Bash Guide for Beginners](https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_01_01.html)
1. [Advanced Bash Scripting Guides](https://tldp.org/LDP/abs/html/)
1. [woolegdge Bash Guide](https://mywiki.wooledge.org/BashGuide)

## Footnotes 

[^terminal history]: to do
