# Don't stop if docker fails
set +e

# Docker
brew install --cask docker
echo "To get docker command-line tools, run the docker application"

# Docker zsh Completion
# https://docs.docker.com/compose/completion/
echo "add the docker plugin to oh-my-zsh in ~/.zshrc: plugins=(... docker)"

set -e
