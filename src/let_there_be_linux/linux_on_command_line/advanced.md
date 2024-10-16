# Advanced (but Common) Concepts

## Bashrc

The behavior of bash can be configured by bashrc file, located at `$HOME/.bashrc`.

Bashrc is a personal initialisation file that contains bash scripts that will be executed when the interactive bash shell is launching.

Append this line to the end of `~/.bashrc`

```sh
echo "I will become a great programmer!"
```

When opening a new terminal, you will see `I will become a great programmer` printed before the first prompt.

After updating `.bashrc` the current session will not automatically load the new configurations. 
Manually load the configurations by `source ~/.bashrc`.

