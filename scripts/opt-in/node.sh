echo
echo "Installing most recent version of NodeJS"

brew install node
brew install nvm

mkdir -p ~/.nvm
echo '
# NVM Config
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >>~/.bash_profile

echo
echo "Installing global NodeJS Packages"

npm install --global yo
npm install --global webpack

# I might think about webstorm?