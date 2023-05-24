# zsh-config
My `zsh` config so I can stop recreating it

This is my personal `zsh` config so I won't be accepting issues. If you end up using this and like it and find ways to improve it, just fork it and put up a PR and if I like the changes I'll adopt it. Otherwise, this is for my personal use.

## Dependencies

There's two "dependency libraries" for this script. It's in quotes because the script fetches the sources directly from github so you don't have to pre-install anything.

### oh-my-zsh

https://ohmyz.sh/

This is a super popular `zsh` library that includes a ton of plugins. I admittedly use **very** few plugins by default (just the git one). If you want to customize the experience more, you can find all the plugins in the [oh-my-zsh wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins).

### Pure

https://github.com/sindresorhus/pure

This is a theme for `zsh` that is super simple. I like the simple interface, and the super great git information that comes as part of the prompt. It tells you:
- what branch you're on
- if your branch is dirty
- if the remote has changes not present in your local
- if your local has changes committed not present in the remote

The other really great piece of info is that the command prompt will contain the duration of the previous command.

## Steps to Set Up

### 1. Verify `zsh` is installed

The script assumes that you already have `zsh` installed. It comes pre-installed on MacOS so you probably don't need to do anything. To confirm run:
```sh
which zsh
```
The output should be something like `/bin/zsh`.

If the output is `zsh not found` then stop here and go to [this link](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH) to get `zsh` installed.

### 2. Pick a default shell directory

I usually want my terminals to open to the directory that contains all my git repos. This is usually something like `~/code` or `~/work` or `~/{company_name}`. Since this is super custom, this script assumes you want to use the `$HOME`  directory (or `~`).

If you wish to change this, before running this script, run `export DEFAULT_SHELL_DIR=~/code` and replace `~/code` with your preferred destination.

### 3. Run the install script

Run the following to install the dependencies and set up the config.

```sh
./install.sh
```

If the command fails with `zsh: permission denied` then run this command to make the file executable.

```sh
chmod +x ./install.sh
```

When this succeeds, run the install command above.

## Aliases
oh-my-zsh and pure both come with a bunch of aliases built in, including a ton of git-based aliases. I don't add any custom ones. To see the full list, run `alias`.
