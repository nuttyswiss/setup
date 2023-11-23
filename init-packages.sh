#! /bin/bash
#
# We assume that we are on an reasonably current Ubuntu LTS system with at
# least a minimal server based install. Here we install and update all the
# extra packages that should already be there, and that we will need.

# Ensure we are root.
[[ "$(whoami)" != "root" ]] && echo "ERROR: not root" >&2 && exit 1

apt-get install -y \
  dc \
  golang \
  jq \
  par \
  net-tools \
  unzip \
  tailscale
