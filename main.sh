python install_homebrew.py


### UNIX tools

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep


 # Add to bash_profile
 # $PATH=$(brew --prefix coreutils)/libexec/gnubin:$PATH


### Install other brew apps

 binaries=(
  # graphicsmagick
  # webkit2png
  # rename
  # zopfli
  ffmpeg
  # sshfs
  # trash
  node
  # tree
  # ack
  # hub
  git
  htop
  watch
)

echo "installing binaries..."
brew install ${binaries[@]}

# Clean
brew cleanup

### Caskroom (brew extension)

brew install caskroom/cask/brew-cask


# Apps
apps=(
  dropbox
  google-chrome
  qlcolorcode
  # screenflick
  slack
  # transmit
  appcleaner
  firefox
  # hazel
  qlmarkdown
  # seil
  # spotify
  vagrant
  # arq
  flash
  iterm2
  qlprettypatch
  shiori
  sublime-text3
  # virtualbox
  # atom
  # flux
  # mailbox
  # qlstephen
  sketch
  # tower
  vlc
  # cloudup
  # nvalt
  quicklook-json
  skype
  # transmission
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}


## Custom settings

. custom_settings.sh
