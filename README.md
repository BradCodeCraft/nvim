# My NeoVim Configuration file

### Recommended Step

[Fork](https://docs.github.com/en/get-started/quickstart/fork-a-repo) this repo
so that you have your own copy that you can modify, then install by cloning the
fork to your machine using one of the commands below, depending on your OS.

> **NOTE**
> Your fork's url will be something like this:
> `https://github.com/<your_github_username>/nvim.git`

You likely want to remove `lazy-lock.json` from your fork's `.gitignore` file
too - it's ignored in the kickstart repo to make maintenance easier, but it's
[recommmended to track it in version control](https://lazy.folke.io/usage/lockfile).

## Clone this configuration
> **NOTE**
> If following the recommended step above (i.e., forking the repo), replace
> `nvim-lua` with `<your_github_username>` in the commands below

<details><summary> Linux and Mac </summary>

```sh
git clone https://github.com/bradcodecraft/nvim.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

</details>

<details><summary> Windows </summary>

If you're using `cmd.exe`:

```
git clone https://github.com/bradcodecraft/nvim.git "%localappdata%\nvim"
```

If you're using `powershell.exe`

```
git clone https://github.com/bradcodecraft/nvim.git "${env:LOCALAPPDATA}\nvim"
```

</details>

## Features:
  -  Packaged with lazy vim
  -  Organized folder structure
  -  Customized keymap

**NOTE**: Check out lua/plugins for installed plugins

## Install Recipes

Below you can find OS specific install instructions for Neovim and dependencies.

After installing all the dependencies continue with the Cloning step

### Windows Installation

<details><summary>Windows with Microsoft C++ Build Tools and CMake</summary>
Installation may require installing build tools and updating the run command for `telescope-fzf-native`

See `telescope-fzf-native` documentation for [more details](https://github.com/nvim-telescope/telescope-fzf-native.nvim#installation)

This requires:

- Install CMake and the Microsoft C++ Build Tools on Windows

```lua
{'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
```
</details>
<details><summary>Windows with gcc/make using chocolatey</summary>
Alternatively, one can install gcc and make which don't require changing the config,
the easiest way is to use choco:

1. install [chocolatey](https://chocolatey.org/install)
either follow the instructions on the page or use winget,
run in cmd as **admin**:
```
winget install --accept-source-agreements chocolatey.chocolatey
```

2. install all requirements using choco, exit previous cmd and
open a new one so that choco path is set, and run in cmd as **admin**:
```
choco install -y neovim git ripgrep wget fd unzip gzip mingw make
```
</details>
<details><summary>WSL (Windows Subsystem for Linux)</summary>

```
wsl --install
wsl
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>

### Linux Install
<details><summary>Ubuntu Install Steps</summary>

```
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip neovim
```
</details>
<details><summary>Debian Install Steps</summary>

```
sudo apt update
sudo apt install make gcc ripgrep unzip git xclip curl

# Now we install nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim-linux64
sudo mkdir -p /opt/nvim-linux64
sudo chmod a+rX /opt/nvim-linux64
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# make it available in /usr/local/bin, distro installs to /usr/bin
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/
```
</details>
<details><summary>Fedora Install Steps</summary>

```
sudo dnf install -y gcc make git ripgrep fd-find unzip neovim
```
</details>

<details><summary>Arch Install Steps</summary>

```
sudo pacman -S --noconfirm --needed gcc make git ripgrep fd unzip neovim
```
</details>

### Terminal Settings
<details>
<summary>Windows Terminal Settings</summary>

```
profiles: {
    "defaults": {
        "backgroundImage": null,
        "colorScheme": "Ayu Dark",
        "font": {
            "face": "FiraCode Nerd Font",
            "size": 13
        },
        "opacity": 90,
        "useAcrylic": false
    },

"schemes": [
    {
        "background": "#0A0E14",
        "black": "#01060E",
        "blue": "#53BDFA",
        "brightBlack": "#767676",
        "brightBlue": "#59C2FF",
        "brightCyan": "#95E6CB",
        "brightGreen": "#C2D94C",
        "brightPurple": "#FFEE99",
        "brightRed": "#F07178",
        "brightWhite": "#FFFFFF",
        "brightYellow": "#FFB454",
        "cursorColor": "#FFFFFF",
        "cyan": "#90E1C6",
        "foreground": "#B3B1AD",
        "green": "#91B362",
        "name": "Ayu Dark",
        "purple": "#FAE994",
        "red": "#EA6C73",
        "selectionBackground": "#FFFFFF",
        "white": "#C7C7C7",
        "yellow": "#F9AF4F"
    },
    {
        "background": "#1A1A18",
        "black": "#928C80",
        "blue": "#78D6F2",
        "brightBlack": "#A0A0A0",
        "brightBlue": "#6DDDF1",
        "brightCyan": "#90E6BF",
        "brightGreen": "#B9E293",
        "brightPurple": "#6369DB",
        "brightRed": "#DF806E",
        "brightWhite": "#FBFCFF",
        "brightYellow": "#E2D07A",
        "cursorColor": "#FFFFFF",
        "cyan": "#BCE5D2",
        "foreground": "#6AE4F1",
        "green": "#78E05E",
        "name": "Cyberlife",
        "purple": "#565BBC",
        "red": "#DD563E",
        "selectionBackground": "#FFFFFF",
        "white": "#FFFFFF",
        "yellow": "#F9FF4C"
    }
],

```
</details>
