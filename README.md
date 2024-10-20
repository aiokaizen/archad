# How to use

To install this for your neovim configuration

``` bash
# First backup your old custom folder 
mv ~/.config/nvim/lua/custom ~/.config/nvim/lua/custom.back

# Then, Clone this repository into your custom folder.
git clone git@github.com:aiokaizen/archad.git ~/.config/nvim/lua/custom
```

Then open up neovim and let everything install.

Restart Neovim and install the treesitter syntax

```
:TSInstall python
```

Install all Mason dependancies:
```
:MasonInstallAll
```

