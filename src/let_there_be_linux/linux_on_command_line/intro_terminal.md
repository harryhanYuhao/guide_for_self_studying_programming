# Hi, Terminal

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


## Terminal Keyboard Shortcuts

Terminals has some idiosyncratic shortcuts. 
Significantly, `Ctrl + C` is not copy, but terminal current command.
Copy and paste in terminal are `Ctrl + Shift + C` and `Ctrl + Shift + V`, respectively.

This is a table of commonly used shortcuts in terminal.

| Shortcut | Description |
|----------|-------------|
| `Up Arrow` | show last command |
| `Down Arrow` | show next command |
| `Tab` | auto-complete command |
| `Ctrl + L` | clear the screen |
| `Ctrl + C` | cancel a command |
| `Ctrl + R` | search the history |
| `Ctrl + D` | exit the terminal |
| `Ctrl + Shift + C` | copy |
| `Ctrl + Shift + V` | paste |

These are some less common shortcuts:

| Shortcut | Description |
|----------|-------------|
| `Ctrl + A` | move to the beginning of the line |
| `Ctrl + E` | move to the end of the line |
| `Ctrl + U` | delete from the cursor to the beginning of the line |
| `Ctrl + K` | delete from the cursor to the end of the line |
| `Ctrl + W` | delete the word before the cursor |

For full reference of terminal shortcuts, see [Appendix](../../appendix/terminal_ref.md).
