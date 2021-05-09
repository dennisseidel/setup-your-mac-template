#!/usr/bin/env bash

# All these applications are independent, so if one
# fails to install, don't stop.
set +e

echo
echo "Installing Designer applications"

# Graphic editing tools

echo "graphic editing tools: use either draw.io from architecture or figma"

# Screen recording tools

brew install --cask recordit
#alternative to recordit brew install --cask licecap
brew install --cask screenflow
brew install --cask obs

set -e
