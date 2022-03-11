#!/bin/bash

function bitwarden_login () {
    {
        bw login {{ .bitwarden.email }}
    } || {
        bitwarden_login
    }
}

# TODO GET RID OF ENTERING PASSWORD EACH FEW SECONDS
read -sp "Bitwarden password: " BW_PASSWORD
echo
export BW_PASSWORD

if [ "$(bw login --check)" == "You are logged in!" ]; then
    echo "INFO Logged in in Bitwarden"
else
    echo "INFO Bitwarden login"
    bitwarden_login
fi

if [ "$BW_SESSION" ] && [ "$(bw unlock --check --session $BW_SESSION)" == "Vault is unlocked!" ]; then
    echo "INFO Bitwarden vault is unlocked"
else
    echo "INFO Unlocking Bitwarden vault"
    export BW_SESSION="$(bw unlock --raw --passwordenv BW_PASSWORD)"
fi

echo "INFO Bitwarden syncing"
bw sync
