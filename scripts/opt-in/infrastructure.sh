echo
echo "Installing Terraform tooling"
brew install terraform
# shell completion
# terraform -install-autocomplete


echo "Install CDK"
# https://github.com/aws/aws-cdk
npm i -g aws-cdk
echo "starter for cdk: https://cdkworkshop.com/"

echo "Install Terraform CDK"
# https://github.com/hashicorp/terraform-cdk
npm install -g cdktf-cli
echo "starter for cdktf: https://github.com/hashicorp/terraform-cdk/blob/main/docs/getting-started/typescript.md"

