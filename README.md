<img src="../assets/probe_logo.png?raw=true" width="500">

## Overview

probe is a bash/zsh function for cd'ing through large directory trees. It can be invoked with the one character command `p`.

cd + ls can get you by for a while, but when you need to cd
`/deep/in/the/neck/of/the/woods/`, the constant cd'ing + tabbing + ls gets exhausting. You could use [nnn](https://github.com/jarun/nnn), but context switching between nnn and normal shell can be excessive when all you want is a simple cd.

What if you had something that could immediately cd into single directories, or if there are multiple directories, provide you a fzf-powered fuzzy menu to select the directory you want?

That's the gist of probe, which is not quite cd+ls, and not quite nnn/ranger,
but something in between.

During a probe session, to cd into directories deeper than one level below the current directory, run `Ctrl-F` to add one level to the directory candidates.

probe is compatible with bash, zsh, and sh.

## Speed Comparison

Here's a comparison of the keystrokes it takes to get into `~/optee/linux/drivers/infiniband/hw` with probe, nnn, and cd + ls.

### probe
- keystrokes: `24` (`5+5+5+5+4`)
- time: `4.3 seconds`

<img src="../assets/probe.gif?raw=true" width="500">

### nnn
- keystrokes: `28` (`4+5+5+5+5+4`)
- time: `4.9 seconds`
- NOTE: The run below uses nnn's vim-like "/" search feature; without the search, getting to the destination takes even longer.

<img src="../assets/probe_nnn.gif?raw=true" width="500">

### cd + ls
- keystrokes: `64` (`9+3+9+3+11+3+14+3+6+3`)
- time: `8.4 seconds`
- NOTE: The run below doesn't show me tab-completing, as this can take longer than just typing out the directory names.

<img src="../assets/probe_cdls.gif?raw=true" width="500">

## Acknowledgements

Thanks to [junegunn](https://github.com/junegunn) for creating fzf, as well as the makers of [pixray](https://pixray.gob.io/text2pixel/), with which I created the probe artwork.
