# Scripts 

This repo use `wc.bash` script to record the number of words in the `src` directory into `log/wc.csv`.

`wc.csv` will append the last entry on `log/wc.csv` to record total number of words and the date of the commit.
If there are multiple commits on the same day, it will only updates the last entry, instead of inserting multiple entries for the same day. 

`wc.bash` script is installed as a git hook to be automatically executed before any commits.

As git hooks is not a part of the git commit, you need to copy the file `./pre-commit` in the current directory to `.git/hooks`.
