# setup

This repo contains setup scripts and binaries for hosts and homes. These are
meant to take a fairly plain Ubuntu LTS server install to something that is
familiar and useful to the author.

## Host scripts

The following scripts should likely be run in the order listed here.

### `init-repos.sh` -- Initialize needed repositories.

We add the necessary repo and keys for later package installs to succeed. We
also run a full update and upgrade after the repos have been added.

### `init-console.sh` -- Initialize to a better console.

Add the necessary configuration to add a much larger font to the console. This
makes reading the output of boot-up and any terminal interactions much easier
on current, higher resolution displays. No attempt is made to detect the type
of display present and adjust font resolutions. Skip if console font size is
not a concern.

### `init-packages.sh` -- Add some missing and necessary packages.

It seems that the latest Linux servers are missing some very basic Unix
utilties that have been part of Unix for roughly ever. Ensure they're there
and add some other things that should have been added to the base install
as soon as the world became aware of them.

### `nuke-crud.sh` -- Nuke random system crud.

Even in the semi-minimal server install, the system distributers believe in
having various crud being installed. Nuke what we can, when it anoys us enough
to bother writing up the necessary code.

### `setup-home.sh` -- Set up a minimal home directory configs.

Work in progress. Home directory configuration with a minimal set of annoying
customizations. Set up quiet login. Aliases only on interactive shells, with
environment variables for all shells. Create the base directory structure.

### `setup-ssh.sh` -- Set up an initial set of SSH configs.

Toss in an initial set of authorized SSH keys for remote login.
