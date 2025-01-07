# nooneknows neovim configuration / setup

![](https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(1).png)

![](https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(2).png)

## install neovim and dependencies

- [homebrew](https://brew.sh/)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)

```
sudo apt upgrade
sudo apt update
sudo apt install build-essential
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

## stack / plugins

- [better escape](https://github.com/max397574/better-escape.nvim)
- [cmake tools](https://github.com/Civitasv/cmake-tools.nvim)
- [conform](https://github.com/stevearc/conform.nvim)
- [git signs](https://github.com/lewis6991/gitsigns.nvim)
- [hydra](https://github.com/anuvyklack/hydra.nvim)
- [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lua json](https://github.com/Joakker/lua-json5)
- [lazyvim](https://github.com/LazyVim/LazyVim)
- [lua](https://lua.org/)
- [markdown previewer](https://github.com/iamcco/markdown-preview.nvim)
- [mason](https://github.com/williamboman/mason.nvim)
- [mason dap adapter](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [multicursors](https://github.com/smoka7/multicursors.nvim)
- [nerdfonts](https://www.nerdfonts.com/)
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
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [whichkey](https://github.com/folke/which-key.nvim)
