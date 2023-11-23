#! /bin/bash
#
# Remove and/or disable system wide crud that we simply do not require. This
# should really have been disabled by default already... but whatever, we deal.

# Ensure we are root.
[[ "$(whoami)" != "root" ]] && echo "ERROR: not root" >&2 && exit 1

# Nuke the MOTD automation
rm -f /etc/update-motd.d/[0-9][0-9]-*

# Nuke the stupid sudo admin flag
cat <<EOF > /etc/sudoers.d/disable_admin_file_in_home
# Disable ~/.sudo_as_admin_successful file
Defaults !admin_flag
EOF
