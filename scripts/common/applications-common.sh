# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing applications"

# mac app store cli
brew install mas


# Utilities

brew install --cask gpg-suite
brew install --cask rectangle
# config https://github.com/rxhanson/Rectangle#terminal-commands
echo
echo "configure shiftit to select 1/3 screen width, 1/2 screen width and 2/3 screen width:"
echo "`defaults write com.knollsoft.Rectangle subsequentExecutionMode -int 1`"
echo
brew install --cask amethyst
brew install --cask the-unarchiver
brew install --cask dash
echo "setup dash for vscode or other editors: https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-dash"
brew install --cask postman
brew install --cask stoplight-studio
brew install --cask quicklook-json

# Terminals
brew install --cask iterm2

# Browsers
brew install --cask google-chrome
echo "chrome settings: login and sync your profile to get your extensions"

# Communication
brew install --cask slack
brew install --cask meetingbar

# Text Editors
brew install --cask typora
brew install --cask obsidian
echo ""
echo "Obsidian settings: use gdrive to sync the vault + the .obsidian folder"
brew install --cask visual-studio-code
echo ""
echo "Visual Studio Code settings: use settings sync plugin"
set -e
