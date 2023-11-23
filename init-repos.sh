#! /bin/bash
#
# We assume that we are on an reasonably current Ubuntu LTS system with at
# least a minimal server based install. Here we install and update all the
# APT repos that we will need.

# Ensure we are root.
[[ "$(whoami)" != "root" ]] && echo "ERROR: not root" >&2 && exit 1

# Tailscale
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.noarmor.gpg | tee /usr/share/keyrings/tailscale-archive-keyring.gpg > /dev/null
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.tailscale-keyring.list | tee /etc/apt/sources.list.d/tailscale.list > /dev/null

# After installing all repositories, update and upgrade.
sudo apt-get update
sudo apt-get upgrade
