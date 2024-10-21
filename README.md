<h1 align="center">ARChad</h1>

<!-- <div align="center"> -->
<!-- 	<a href="https://nvchad.com/">Home</a> -->
<!--   <span> • </span> -->
<!--     	<a href="https://nvchad.com/docs/quickstart/install">Install</a> -->
<!--   <span> • </span> -->
<!--        	<a href="https://nvchad.com/docs/contribute">Contribute</a> -->
<!--   <span> • </span> -->
<!-- 	<a href="https://github.com/NvChad/NvChad#gift_heart-support">Support</a> -->
<!--   <span> • </span> -->
<!--         <a href="https://nvchad.com/docs/features">Features</a> -->
<!--   <p></p> -->
<!-- </div>  -->

<!-- <details><summary> <b>Images (Click to expand!)</b></summary> -->
<!---->
<!-- ![4 themes](https://nvchad.com/screenshots/four_Themes.webp) -->
<!-- ![radium 1](https://nvchad.com/screenshots/radium1.webp) -->
<!-- ![radium 2](https://nvchad.com/screenshots/radium2.webp) -->
<!-- ![radium 3](https://nvchad.com/screenshots/radium3.webp) -->


(Note: these are just 4-5 themes, NvChad has around 56 themes)
</details>

This is my personal nvim setup built on top of [NVChad](https://github.com/NvChad/NvChad/tree/v2.0).

## Setup

To install this for your neovim configuration


### 1. Download neovim

If you don't have it already, you should download neovim.

``` bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```

You can change the version of nvim depending on your architecture.

You can find different versions and architectures in [NeoVIM releases page](https://github.com/neovim/neovim/releases)


### 2. Clone NVChad

We will be using NVChad v2.0 for this setup.

``` bash
# If you alrady have another nvim configuration installed, make sure to back it up in case
# you want to roll back the changes.
mv ~/.config/nvim ~/.config/nvim.back

# Clean nvim environment
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim

# Clone NVChad repo
git clone -b v2.0 https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
```


### 3. Clone ARChad 

``` bash
# If you alrady have a custom folder of your own, make sure to back it up in case
# you want to roll back the changes.
mv ~/.config/nvim/lua/custom ~/.config/nvim/lua/custom.back

# Clone this repository into your custom folder.
git clone git@github.com:aiokaizen/archad.git ~/.config/nvim/lua/custom
```

### 4. Post install

Open up neovim and let everything install.

Restart Neovim and install the treesitter syntax

```
:TSInstall python
```

Install all Mason dependancies:

```
:MasonInstallAll
```

## Commands

We will state only the changes from NVChad defaults. To see all the default options
refer to the [NVChad Documentation]()
