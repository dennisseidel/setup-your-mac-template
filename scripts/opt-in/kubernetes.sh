echo
echo "Installing Kubernetes Command-line Interface and Tools"
# https://kind.sigs.k8s.io/
# brew install kind
# as kind currently doesn't support arm: https://github.com/kubernetes-sigs/kind/issues/166#issuecomment-744417522
brew install minikube
brew install kubectl
#brew link --overwrite kubernetes-cli
# Shell completion
FILE=~/.zshrc
if [[ -f "$FILE" ]]; then
    echo "$FILE exists proceeding."
else 
    echo "$FILE does not exist, creating."
    touch $FILE
fi

echo 'source <(kubectl completion zsh)' >>~/.zshrc
echo 'alias k=kubectl' >>~/.zshrc
echo 'complete -F __start_kubectl k' >>~/.zshrc

brew install helm
brew install skaffold
