# Navigating the File System

## Create and Navigate Directories and Files

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

## `ls`

`ls` is one of the most frequently used command. 

In Linux (and Unix), files or directories that begin with `.` will be hidden. 

```sh
$ touch .secret
$ ls  # prints nothing
```

To view hidden files, pass `-a`:

```sh
$ ls -a
. .. .secret  # . and .. are current and parent directory
```

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
