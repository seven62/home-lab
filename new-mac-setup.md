# Setting up a new mac

## Requirements

1. Install Package Manager
- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
1. Update brew:
- `brew update`


## Install Script

There's a script for ~all~ most of the things. 

1. Inspect and comment out / replace the programs you don't want. This starting point.
1. Execute the install script by copying and running the script in this gist: `sh ./macos-setup.sh`


## Post-Install Steps

### Fix Bash Shell and set as Default

In the install script you got an updated version of the bash shell. Now make that 
the default:

1. Edit the shells file: `sudo vim /etc/shells`
1. Append the file with a new line: `/usr/local/bin/bash` and save.
1. Change to this new shell: `chsh -s /usr/local/bin/bash`.
1. Restart your terminal emulator (iterm2)

> Note: /usr/local/bin/bash: new version for use in scripts


### Browser Extensions

I use the following browser extensions:

- gitako
- dark reader
- bitwarden
- momentum


### iTerm2

1. Preferences > Profiles > Colors: set theme to "Pastel Dark Background"
1. Preferences > Profiles > Text: set font to Fira Code 14 pt
1. Preferences > Profiles > Session. 
  - Turn on Status bar enabled
  - Then click Configure Status Bar to begin setting up your status bar configuration.

> [reference](https://www.iterm2.com/documentation-status-bar.html)


### Vim

1. Install vim-plug
  - curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
1. Copy over dotfiles/.vimrc


### System Settings

To get the Home folder in the finder, press CMD + SHIFT + H and drag the home folder to the sidebar.
  
  
#### General
- Set Dark mode
- Make Firefox default browser


#### Dock
- Automatically hide and show Dock
- Show indicators for open applications
- Use scale effect


#### Keyboard
- Key Repeat -> Fast
- Delay Until Repeat -> Short
- Disable "Correct spelling automatically"
- Disable "Capitalize words automatically"
- Disable "Add period with double-space"
- Disable "Use smart quotes and dashes"

#### Security and Privacy
- Allow apps downloaded from App Store and identified developers
- Turn FileVault On (? never done this, bad cyber guy bad!)
- Turn Firewall On

#### Sharing
- Change computer name
- Make sure all file sharing is disabled

#### Users & Groups
- Add "Rectangle" to Login items
