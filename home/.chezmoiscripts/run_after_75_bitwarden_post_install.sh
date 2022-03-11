#!/bin/bash

function bitwarden_login () {
    {
        bw login {{ .bitwarden.email }}
    } || {
        bitwarden_login
    }
}

if [ "$(bw login --check)" == "You are logged in!" ]; then
    echo "INFO Logged in in Bitwarden"
else
    echo "INFO Bitwarden login"
    bitwarden_login
fi

if [ "$(bw unlock --check --session $BW_SESSION)" == "Vault is unlocked!" ]; then
    echo "INFO Bitwarden vault is unlocked"
else
    echo "INFO Unlocking Bitwarden vault"
    export BW_SESSION="$(bw unlock --raw)"
fi
