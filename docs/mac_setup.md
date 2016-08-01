# Mac Setup Commands
A collection of commands useful in setting up a new Mac installation

### Disable Dashboard
```
defaults write com.apple.dashboard mcx-disabled -boolean TRUE
killall Dock
```

### Show hidden files in finder
`defaults write com.apple.finder AppleShowAllFiles TRUE`
