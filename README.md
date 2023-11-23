# setup
This repo to contains setup scripts/binaries for hosts and homes.

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
