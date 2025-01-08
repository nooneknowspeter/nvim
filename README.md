# nooneknows neovim configuration / setup

![](https/i.imgur.com/X1Di0VJ.mp4)

![](https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(1).png)

![](https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(2).png)

## language support (dap, formatters, linters)

- C#
- C++
- CSS
- GLSL
- HTML
- JavaScript
- Lua
- Python
- TypeScript

## install neovim and dependencies

- [dotnet](https://dotnet.microsoft.com/en-us/)
- [homebrew](https://brew.sh/)
- [lua && lua rocks <= v5.1.x](https://lua.org/)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package/)
- [nerdfonts](https://www.nerdfonts.com/)
- [ohmypsh](https://github.com/jandedobbeleer/oh-my-posh)
- [python >= 3.8 <= 3.12](https://www.python.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

### debian / ubuntu

```
sudo apt upgrade
sudo apt update
sudo apt install build-essential
```

### arch

```
sudo pacman -Syu
sudo pacman -S base-devel
```

## install neovim configs

### linux / macos

```
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/nooneknowspeter/nvim-setup.git ~/.config/nvim && nvim
```

### windows

```
rm -Force ~\AppData\Local\nvim
rm -Force ~\AppData\Local\nvim-data
git clone https://github.com/nooneknowspeter/nvim-setup.git C:\Users\$ENV:USERNAME\AppData\Local\nvim && nvim

```

### docker

```
docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone https://github.com/nooneknowspeter/nvim-setup.git ~/.config/nvim
  nvim
  '
```

## updating

### updating nvim

```
brew update
upgrade neovim
```

### updating nvim packages

```
:Lazy sync
:MasonUpdate
:DapInstall <dap_name>
```

## neovim plugins

- [better escape](https://github.com/max397574/better-escape.nvim)
- [cmake tools](https://github.com/Civitasv/cmake-tools.nvim)
- [conform](https://github.com/stevearc/conform.nvim)
- [git signs](https://github.com/lewis6991/gitsigns.nvim)
- [hydra](https://github.com/anuvyklack/hydra.nvim)
- [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lua json](https://github.com/Joakker/lua-json5)
- [lazyvim](https://github.com/LazyVim/LazyVim)
- [markdown previewer](https://github.com/iamcco/markdown-preview.nvim)
- [mason](https://github.com/williamboman/mason.nvim)
- [mason dap adapter](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [multicursors](https://github.com/smoka7/multicursors.nvim)
- [neovim](https://github.com/neovim/neovim)
- [neovim colorizer](https://github.com/NvChad/nvim-colorizer.lua)
- [neovim lsp](https://github.com/neovim/nvim-lspconfig)
- [nvchad](https://github.com/NvChad/NvChad)
- [nvim autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim dap](https://github.com/mfussenegger/nvim-dap)
- [nvim dap ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim dap python](https://github.com/mfussenegger/nvim-dap-python)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [nvim surround](https://github.com/kylechui/nvim-surround)
- [nvim treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim plenery](https://github.com/nvim-lua/plenary.nvim)
- [remote nvim](https://github.com/amitds1997/remote-nvim.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [whichkey](https://github.com/folke/which-key.nvim)
