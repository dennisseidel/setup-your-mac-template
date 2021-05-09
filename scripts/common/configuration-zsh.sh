echo
echo "Configuring zsh with oh-my-zsh"
brew install autojump
# install autojump with zsh https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/autojump
brew install grc
# https://github.com/garabik/grc/blob/master/grc.zsh
# https://formulae.brew.sh/formula/grc
# https://github.com/garabik/grc#zsh
# https://unix.stackexchange.com/a/159
brew install coreutils
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/gnu-utils/gnu-utils.plugin.zsh
# https://www.gnu.org/software/coreutils/manual/coreutils.html
# https://gist.github.com/StumblinGrumblin/da7c5113722cfd4c94ad
brew install watch
# https://www.mokkapps.de/blog/boost-your-productivity-by-using-the-terminal-iterm-and-zsh/
# https://github.com/reem/watch/blob/master/watch.zsh

cp files/.inputrc ~/.inputrc
# https://unix.stackexchange.com/questions/424471/whats-the-difference-between-bashrc-and-inputrc
# https://www.topbug.net/blog/2017/07/31/inputrc-for-humans/#:~:text=inputrc%20is%20the%20user%20configuration,features%20are%20disabled%20by%20default.
# https://pencilflip.medium.com/my-zshrc-file-on-mac-adapted-from-bashrc-and-inputrc-16ac09efeb95
# https://gist.github.com/svenanders/976190d5e59d0d7839091a376e66b79f

# install oh my zsh
# https://github.com/ohmyzsh/ohmyzsh
brew install curl
rm -rf ~/.oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh#unattended-install
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
# https://github.com/ohmyzsh/ohmyzsh#custom-plugins-and-themes
# THEME: install powerlevel10k with oh-my-zsh (solerized)
# https://github.com/romkatv/powerlevel10k#oh-my-zsh
# https://github.com/romkatv/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo 'configure powerlevel: p10k configure'
echo 'install fonts: https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k'
# https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins
# add it to the .zshrc file 
echo 'plugins=(git autojump)' >> ~/.zshrc
# look into github support if it makes my workflow faster: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/github
# validate if I want https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git-prompt
# https://adonisk.com/blog/my-oh-my-zsh-setup.html
# https://github.com/zsh-users/zsh-completions
# https://github.com/zsh-users/zsh-completions/tree/master/src
brew install zsh-completions
echo '
# zsh-completion
autoload -Uz compinit
compinit
' >> ~/.zshrc

echo
echo "Configuring direnv with zsh"
# https://direnv.net/
brew install direnv
echo 'eval "$(direnv hook zsh)"' >> ~/.zshrc
