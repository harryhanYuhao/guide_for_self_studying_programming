# Advanced (but Common) Concepts

## Bashrc

Bash can be configured with the bashrc file, located at `$HOME/.bashrc`.

Bashrc file contains bash scripts that will be executed when the interactive bash shell is launching.

To see it work, append this line to the end of `~/.bashrc`

```sh
echo "I will become a great programmer!"
```

When opening a new terminal, you will see `I will become a great programmer` printed before the first prompt. 

After updating `.bashrc` the current session will not automatically load the new configurations. 
You can also manually load the configurations by `source ~/.bashrc`.

### Prompt

Bash prompt is stored in the variable `PS1`. 
You can change its value by running the following line:

```sh
PS1="\
\[\033[01;32m\]\u@\h\[\033[00m\]\
:\
\[\033[01;34m\]\w\[\033[00m\]\
:\033[02m\d \t\033[00m\n\$ "
```

A different prompt will be shown. 
If you like it, append this line onto `.bashrc`. 

For more prompt customisation, see [wiki](https://wiki.archlinux.org/title/Bash/Prompt_customization) and [prompt generator](https://bash-prompt-generator.org/).

### Alias 

Alias command in bash is defined this way 

```sh
alias ll="ls -lar --sort t --color"  # append to .bashrc for persistant change
```

Now `ll` will be automatically expanded into `ls -lar --sort t --color`. 
To ignore the alias and use the original command, prepend with slash: `\ll`.

## Path and Executable

In Linux, an executable file can be directly executed by entering its path. 

Let us create a bash file and make it executable:

```sh
$ cd ~; mkdir executable_demo; cd executable_demo;
$ echo "echo hi executable" > hi.bash
$ chmod +x hi.bash  # make it executable
$ ~/executable_demo/hi.bash  # execute it by entering its full path
hi executable
$ ./hi.bash  # execute it by entering its relative path
hi executable
```

You can append the directory into `PATH` envrionment variable. (For persistant change modify the `bashrc`).

```sh
$ PATH="$PATH:$HOME/executable_demo"
$ hi.bash  
hi executable
```

When entering a bash command, bash will search all executable under `$PATH` directories and execute the first matched one.

Check your current `PATH` variable this way:

```sh
$ echo $PATH  # it shall look like this
/home/virtus/.local/bin:/home/virtus/bin:/usr/local/bin:/usr/bin:/home/virtus/.cargo/bin/
$ echo $PATH | tr ':' '\n'  # substitute : for \n, which is carriage return
/home/virtus/.local/bin
/home/virtus/bin
/usr/local/bin
/usr/bin
/home/virtus/.cargo/bin/
```

## Glob pattern 

Strings in bash containing `*`, `?`, or `[` are glob patterns, which are wildcard that can match strings following these rules (among others):

1. `*` matches any strings including the empty string;
1. `?` match exactly one character of any sort;
1. `[`, `]` match any single character contained in the brackets

Glob pattern is __*different*__ from regular expression, or regex.

See following examples:

```sh
$ touch a.txt b.txt abc.txt ab.md ac.md a.md  # create some files for experiment
$ ls *.txt  # list any files that end with .txt
abc.txt  a.txt  b.txt
$ ls ??.*  # list files of any extension that have two letters before .
ab.md  ac.md
$ ls [ab].txt
a.txt b.txt
$ ls [ab]*.txt
abc.txt  a.txt  b.txt
$ rm *  # rm all files
```


## Stdin, Stdout, Stderr

Stdin, Stdout, Stderr are abbreviations for standard input, standard output, and standard error. 
These are stdio (standard input and output) streams used in operating system as a abstract layer to handle the inputs and outputs of all programs.

For simlicity:

1. Stdin, stdout, stderr are represented by fd 0, 1, 2, respectively. Fd means file descriptor. 
1. If a bash command runs successfully, it may a return some information through stdout, which will be printed on the terminal;
1. If a command failed, it may return the informations through stderr, which will be printed on the terminal and likely have no difference from stdout for users's perspective;
1. Many commands can handle inputs from command arguments and from stdin;
1. Bash has many tools to handle stdio, including `|` (pipeline), `>` (output redirection), `<` (input redirection), etcs. 

Check [stdio(3)](https://man7.org/linux/man-pages/man3/stdin.3.html)

Symbols controlling input and output are the most exploited features in bash. 
They are used to produce obfuscated code like this: 

```sh
$ for i in $(echo -e 'G\nM\nK'); do du -hsx *  2>/dev/null | grep '[0-9]'$i | sort -rn; done
```

This code enumerate files in the current directory in order of size.

The following sesssion is a gental introduction for bash io symbols.

### Pipeline, `|`

Pipeline redirect the stdout of the previous command to the stdin of the next command. 
This symbol is used with commands that accept input from the stdin.

Here is a naive example:

```sh
$ echo "hello" | wc -c  # count the number of characters in the string 
```

Many useful and creative commands depend on pipeline.

```sh
$ grep -r "pattern" . | wc -l  # count the number of lines that contain "pattern" in the current directory
$ ls -l | grep "drwx"  # list all directories in the current directory
$ grep -r "pattern" . | sort | uniq  # sort and remove duplicates
$ find . -type f | less  # list all files recursively and open in less
```

Most commands will treat stdin and command arguments differently.

One example is to count the total number of lines in all files under the current directory, by using `find .`, `wc`, `xargs`, and pipeline.

`wc -l <filename>` counts the number of lines in a file; `find . -type f` lists all files in the current directory.
`find . -type f | wc -l` will, however, only counts the number of lines in the output of `find . -type f`, i.e., how many files there are in the current directory. 

We need, instead, pipe the output of `find` to the arguments of `wc`. `xargs` is the commad used for this.

```sh
$ find . -type f | xargs wc -l # count total number of lines in files of current directory
```

## Bash History, `!`, arrow keys, and `Ctrl-r`.

`history` command shows the bash command history. 

Here is an example:

```sh 
$ history
  (omitted)
  928  a
  929  history 
  930  man history 
  931  ls
  933  man history
  934  clear
```

You can use up and down arrow keys to substitute current command with history commands. 

`!<n>` is the shortcut to execute the nth command in the history.

Chech `man history` for more.

