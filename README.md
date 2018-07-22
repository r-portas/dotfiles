# dotfiles
Repo containing my dotfiles

## Install
```bash
git clone https://github.com/r-portas/dotfiles
cd dotfiles
sh setup.sh
```

## Tools

### Terminal Emulator - Hyper

Needs extra setup for windows, such as setting the TERM variable.

## Workflow
### Code Reviews
Code reviews can be done easily through the `git difftool` command, which is
configured to use vim

To perform a code review, do the following:
```bash
# Checkout and pull the branch to review
git checkout feature
git pull

# View the diff between the current branch and a given branch
git difftool master
```

The changes will be displayed in the right pane of vim

## Useful Vim Shortcuts
| Key       | Description                                           |
| --------- | ----------------------------------------------------- |
| `gx`      | Open the URL under the cursor in a browser            |

## Fonts
- [Input Mono](http://input.fontbureau.com/)
- [Source Code Pro](https://fonts.google.com/specimen/Source+Code+Pro)
- [Fira Mono](https://fonts.google.com/specimen/Fira+Mono)
