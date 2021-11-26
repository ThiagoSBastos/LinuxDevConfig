#!/bin/bash

# Package Managers
DNF_CMD=$(which dnf)
APT_CMD=$(which apt)

# Languages and libraries
if [[ ! -z $DNF_CMD ]]; then
    echo "[DNF BASED INSTALL]";
    dnf groupinstall "Development Tools" "Development Libraries"
    dnf install clang-tools-extra nodejs neovim -y   
elif [[ ! -z $APT_CMD ]]; then
    echo "[APT BASED INSTALL"];
    apt install build-essential git cmake clang clangd-12 nodejs neovim -y
else
    echo "[ERROR] Package manager not supported.";
    exit 1;
fi

