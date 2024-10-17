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
