# Common Shell Commands 

There are many shell commands. 
Here some commonly used one are presented with many practical examples. 

## `echo`, `cat`, and Output Redirection

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

A file can be created with `echo` and output redirection `>`, or redirection with append `>>`. 

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

## Getting Help with `man`

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

## `apropos`, `less`, and pipe

If you have forgotten the name of a command, use `apropos <keywords>` to search relevent commands related to `<keywords>`. 

`apropos` will usually output a long list. 
You can display its content interactly by piping it to `less`:

```sh
apropos <keywords> | less
```

Navigating the contents presented by `less` is the same as navigating the man page. (Indeed, man pages likely use `less`).

`|` is the pipe keywords, which redirect the output of the previous command to be the input of the next command. 
It is explained in [advanced concepts](./advanced.md).

## `copy`, and Glob Pattern

`cp` copies the files and directories.

Here are the examples:

```sh
$ cp file.txt newfile.txt  # create a new file named newfile.txt with the contents of file.txt
$ cp file.txt -t new/dir  # create a copy of file.txt and place it uder new/dir
$ cp -r /path/to/dir /new/dir  # the directory /path/to/dir recursively to /new/dir
```

A small detail many may miss is that `cp -r /path/to/dir /new/dir` will create `/new/dir` and make it a copy of `/path/to/dir`. 
To copy the contents of `/path/to/dir` and place them under `/new/dir`, use the following:

```sh
$ cp -r path/to/dir/* -t /new/dir  # copies every files and directories in dir/files/recursively and place them under /new/dir
```

## Miscellanea

- `clear`: clear terminal screen
- `sleep` : sleep for some seconds 
- `rmdir`: remove empty directory
- `whatis`: display one-line manual page descriptoin
- `whereis`: find where does the command locate
- `ps`: get pid of process 
- `kill`: kill a process with pid

## More commands 

There are many more shell commands, and we can not list everyone here. 

To learn more, `man` pages and chatgpt are your friends.
