#! /bin/bash
#
# We assume that we are on an reasonably current Ubuntu LTS system with at
# least a minimal server based install. Here we install and update all the
# APT repos that we will need.

# Ensure we are root.
[[ "$(whoami)" != "root" ]] && echo "ERROR: not root" >&2 && exit 1

# Use a much larger font, most of our console terminals are 4k displays now...
cat <<EOF > /etc/default/console-setup
# CONFIGURATION FILE FOR SETUPCON

# Consult the console-setup(5) manual page.

ACTIVE_CONSOLES="/dev/tty[1-6]"

CHARMAP="UTF-8"

CODESET="guess"
FONTFACE="Terminus"
FONTSIZE="16x32"

VIDEOMODE=
EOF

# Update boot image
update-initramfs -u
