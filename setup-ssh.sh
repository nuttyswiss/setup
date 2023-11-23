#! /bin/bash
#
# Toss in a couple of SSH public keys for remote access without passwords.

# Ensure we are NOT root.
[[ "$(whoami)" = "root" ]] && echo "ERROR: we are root" >&2 && exit 1

# Add some public SSH keys
cat <<EOF > ${HOME:?}/.ssh/authorized_keys
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGW+1Y+31KA8S29h15BBAgNrNFaIHGaAIYo/PlhsH240
ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGmkwq3jGHLYRkx06FFgw2zwwnLtgn1Sjg1fUhZeYf7M
EOF

# Ensure perms are correct
chmod 700 ${HOME:?}/.ssh
chmod 600 ${HOME:?}/.ssh/authorized_keys
