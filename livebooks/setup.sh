#!/usr/bin/env bash

set -euox pipefail

# Detect OS
OS=$(uname -s)
case "$OS" in
    Linux*)     MACHINE=Linux;;
    Darwin*)    MACHINE=Mac;;
    *)          echo "Unsupported operating system: $OS" && exit 1;;
esac

echo "Detected OS: $MACHINE"

echo "Running asdf install..."

if ! asdf; then
    echo "Error: asdf not installed. Please follow instructions at https://asdf-vm.com/guide/getting-started.html"
    exit 1
fi

asdf plugin add elixir https://github.com/asdf-vm/asdf-elixir.git
asdf plugin add erlang https://github.com/asdf-vm/asdf-erlang.git
asdf install

if ! mix do local.rebar --force, local.hex --force && mix escript.install hex livebook; then
    echo "Error: mix dependencies installation failed"
    exit 1
fi

asdf reshim elixir

if ! docker compose ; then
    if [ "$MACHINE" = "Linux" ]; then
        echo "Error: Docker not installed, please follow instructions at https://docs.docker.com/engine/install"
        exit 1
    else
        echo "Error: Docker not installed, please follow instructions at https://docs.docker.com/desktop/setup/install/mac-install/"
        exit 1
    fi
fi

echo "All jobs completed successfully"
exit 0
