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

You can append the directory into `PATH` envrionment variable.

```sh
$ PATH="$PATH:$HOME/executable_demo"
$ hi.bash  
hi executable
```

When entering a bash command, bash will search all executable files under directoryies in the `$PATH` variable, and execute it if the name matches.

Check your current `PATH` variable:

```sh
$ echo $PATH  # it shall look like this
/home/virtus/.local/bin:/home/virtus/bin:/usr/local/bin:/usr/bin:/home/virtus/.cargo/bin/:/home/virtus/executable_demo
$ echo $PATH | tr ':' '\n'  # substitute : for \n, which is carriage return
```

Again, if you want persistant change, append `PATH="$PATH:$HOME/executable_demo"` to `bashrc`.

## Glob pattern 

In bash you can use `*` as a wild card to match any letter, and `?` to match any one single letter.
This is called 'glob pattern'. 
Note, glob pattern is different from regex.

Here is the example

```sh
$ touch a.txt b.txt abc.txt ab.md ac.md a.md  # create some files for experiment
$ ls *.txt  # list any files that end with .txt
abc.txt  a.txt  b.txt
$ ls *.md  # list any files that end with .md
ab.md  ac.md  a.md
$ ls ??.*  $ list files of any extension that have two letters before .
ab.md  ac.md
$ rm *.txt  $ rm all .txt files 
$ ls
ab.md  ac.md  a.md
$ rm *  $ rm all files
```

## Stdin, Stdout, Stderr


