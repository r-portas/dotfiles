# Slow performance with builtin Terminal

[Stackoverflow article](https://apple.stackexchange.com/questions/269668/slow-terminal-on-sierra)

Things that seem to work:
* In preferences, select the profile, then window and set "Limit number of rows to" to something smaller (400 seems to work ok)
* In profile > Shell, set the run command to `login -f <username>`
