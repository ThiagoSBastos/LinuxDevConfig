#!/bin/bash

# Package Managers
DNF_CMD=$(which dnf)
APT_CMD=$(which apt)

# Languages and libraries
if [[ ! -z $DNF_CMD ]]; then
    echo "[DNF BASED INSTALL]";
    dnf groupinstall "Development Tools" "Development Libraries"   
elif [[ ! -z $APT_CMD ]]; then
    echo "[APT BASED INSTALL"];
    apt install build-essential git cmake clang
else
    echo "[ERROR] Package manager not supported.";
    exit 1;
fi

