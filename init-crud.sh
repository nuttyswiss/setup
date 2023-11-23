#! /bin/bash
#
# Remove and/or disable system wide crud that we simply do not require. This
# should really have been disabled by default already... but whatever, we deal.

# Ensure we are root.
[[ "$(whoami)" != "root" ]] && echo "ERROR: not root" >&2 && exit 1

# Nuke the MOTD automation
rm -f /etc/update-motd.d/[0-9][0-9]-*
