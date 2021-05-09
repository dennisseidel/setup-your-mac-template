echo
echo "Installing Git and associated tools"
brew install git
brew install gh
brew install vim

brew install --cask gitup

MY_DIR="$(dirname "$0")"
source ${MY_DIR}/scripts/opt-in/node.sh
# https://github.com/commitizen/cz-cli
npm install -g commitizen
npm install -g cz-conventional-changelog
echo '{ "path": "cz-conventional-changelog" }' > ~/.czrc

echo
echo "Setting global Git configurations"
git config --global core.editor /opt/homebrew/bin/vim
# https://git-scm.com/docs/git-fsck-objects
# https://gist.github.com/mbbx6spp/14b86437e794bffb4120
# https://stackoverflow.com/questions/41029654/ignore-fsck-zero-padded-file-mode-errors-in-git-clone
git config --global transfer.fsckobjects false
# never rebase a shared branche https://coderwall.com/p/7aymfa/please-oh-please-use-git-pull-rebase
git config --global pull.rebase false

git config --global init.defaultBranch main
mkdir -p ~/.git_templates
git config --global init.templateDir ~/.git_templates
echo "ref: refs/heads/main" > ~/.git_templates/HEAD

git config --global user.name dennisseidel
git config --global user.email ds@dennisseidel.de

echo "Setup global hooks directory (place your private repo independed hooks here:)"
HOOKS_DIRECTORY=$HOME/workspace/git-hooks-core
echo "${HOOKS_DIRECTORY}"
if [ ! -d $HOOKS_DIRECTORY ]; then
  echo
  echo "Installing git hooks for cred-alert"
  # for more information see https://github.com/dennisseidel/git-hooks-core
  git clone https://github.com/dennisseidel/git-hooks-core $HOOKS_DIRECTORY
  git config --global --add core.hooksPath $HOOKS_DIRECTORY
else
  echo
  echo "Updating git-hooks for cred-alert"
  pushd $HOOKS_DIRECTORY
  git pull -r
  popd
fi
echo "check out https://github.com/dennisseidel/git-hooks-core (and look ad cred-alert-cli as an example how to integrate it)"

# install git-secrets
brew install git-secrets

echo "for repo specific pre-commit hooks checkout: https://pre-commit.com/"