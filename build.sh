#!/bin/bash
if type devcontainer >/dev/null 2>&1; then
    devcontainer build , --image-name paperenv-img
else
    echo "devcontainer CLI not found. Please install it from command palette in VSCode."
    exit 1
fi
