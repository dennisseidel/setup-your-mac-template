pushd ~/workspace
if [ ! -d ~/workspace/jetbrains-ide-prefs ]; then
    echo
    echo "Downloading IDE preferences"
    git clone https://github.com/professor/jetbrains-ide-prefs
fi
popd