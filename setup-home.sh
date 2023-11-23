#! /bin/bash
#
# Assume our current working directory is within the repo, ./home exists, and
# that we are doing a best efforto both clean up previous crud and install a
# new/updated set of dot files and file permissions.

# Ensure we are NOT root.
[[ "$(whoami)" = "root" ]] && echo "ERROR: we are root" >&2 && exit 1

# Create base directory structure
mkdir -p ${HOME:?}/{bin,pkg,sdk,src,tmp,work}

# Copy over the template home directory
tar -C home -cf - . | tar -C ${HOME:?} -xpf -

# Set some resonable perms on stuff
chmod 755 ${HOME:?} ${HOME:?}/{bin,pkg,sdk,src,tmp,work}
chmod 644 ${HOME:?}/.{bash*,exrc,gitconfig,hushlogin,license}

# Nuke a few things that should not be around
rm -f \
 ${HOME:?}/.profile \
 ${HOME:?}/.sudo_as_admin_successful

