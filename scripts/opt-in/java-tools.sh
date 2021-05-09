echo
echo "Installing Java Development tools"
brew install --cask intellij-idea-ce --force # guard against pre-installed intellij
#brew tap jcgay/jcgay
#brew install maven-deluxe
brew install gradle
brew install spring-io/tap/spring-boot

source ${MY_DIR}/scripts/common/download-pivotal-ide-prefs.sh
pushd ~/workspace/jetbrains-ide-prefs/cli
./bin/ide_prefs install --ide=intellij
popd
