# nooneknows neovim configuration / setup

![screenshot](<https://github.com/nooneknowspeter/nvim/blob/main/public/screenshot%20(3).png>)

![screenshot](<https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(1).png>)

![screenshot](<https://github.com/nooneknowspeter/nvim-setup/blob/main/public/screenshot%20(2).png>)

## language support (dap, formatters, linters)

supports multiple languages including:

- C#
- C++
- CSS
- GLSL
- Go
- HTML
- JavaScript
- Lua
- Python
- Rust
- SQL
- TypeScript
- and more

## install neovim and dependencies

- [dotnet](https://dotnet.microsoft.com/en-us/)
- [homebrew](https://brew.sh/)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [lua <= v5.1.x](https://lua.org/)
- [neovim](https://github.com/neovim/neovim/blob/master/INSTALL.md#install-from-package/)
- [nerdfonts](https://www.nerdfonts.com/)
- [nodejs](https://nodejs.org/en/)
- [ohmypsh](https://github.com/jandedobbeleer/oh-my-posh)
- [python >= 3.8 <= 3.12](https://www.python.org/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [texlive (for latex)](https://www.tug.org/texlive/)
- [yarn](https://www.npmjs.com/package/yarn)

### debian / ubuntu

```sh
sudo apt upgrade
sudo apt update
sudo apt install build-essential
```

### arch

```sh
sudo pacman -Syu
sudo pacman -S base-devel
```

## install neovim configs

### linux / macos

```sh
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/nooneknowspeter/nvim.git ~/.config/nvim && nvim
```

### windows

```sh
rm -Force $env:LOCALAPPDATA\nvim
rm -Force $env:LOCALAPPDATA\nvim-data
git clone https://github.com/nooneknowspeter/nvim.git $env:LOCALAPPDATA\nvim && nvim

```

### docker

```sh
docker run -w /root -it --rm alpine:latest sh -uelic '
  apk add git nodejs neovim ripgrep build-base wget --update
  git clone https://github.com/nooneknowspeter/nvim.git ~/.config/nvim
  nvim
  '
```

## updating

### updating nvim

```sh
brew update
upgrade neovim
```

### updating nvim packages

```
:Lazy sync
:MasonUpdate
:DapInstall <dap_name>
```

## nvim as git editor

```sh
git config --global core.editor "nvim"
```

## nvim as global unix editor

```sh
export EDITOR=nvim
```

## neovim plugins

[hash map of configured plugins](https://github.com/nooneknowspeter/nvim/blob/main/lazy-lock.json)

- [autopairing](https://github.com/windwp/nvim-autopairs)
- [better escape](https://github.com/max397574/better-escape.nvim)
- [cmake tools](https://github.com/Civitasv/cmake-tools.nvim)
- [cmp nvim lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [csv view](https://github.com/hat0uma/csvview.nvim)
- [dadbod](https://github.com/tpop/vim-dadbod)
- [dadbod ui](https://github.com/hristijanhusak/vim-dadbod-ui)
- [distant](https://github.com/chipsenkbeil/distant.nvim)
- [fidget](https://github.com/j-hui/fidget.nvim)
- [git signs](https://github.com/lewis6991/gitsigns.nvim)
- [hydra](https://github.com/anuvyklack/hydra.nvim)
- [images.nvim](https://github.com/3rd/image.nvim)
- [indent blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lua json](https://github.com/Joakker/lua-json5)
- [lazygit vim](https://github.com/kdheepak/lazygit.nvim)
- [lazyvim](https://github.com/LazyVim/LazyVim)
- [luasnip](https://github.com/L3MON4D3/LuaSnip)
- [markdown previewer](https://github.com/iamcco/markdown-preview.nvim)
- [mason](https://github.com/williamboman/mason.nvim)
- [mason dap adapter](https://github.com/jay-babu/mason-nvim-dap.nvim)
- [mason-lspconfig](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason null ls](https://github.com/jay-babu/mason-null-ls.nvim)
- [multicursors](https://github.com/smoka7/multicursors.nvim)
- [neovim](https://github.com/neovim/neovim)
- [neovim colorizer](https://github.com/NvChad/nvim-colorizer.lua)
- [neovim lsp](https://github.com/neovim/nvim-lspconfig)
- [noice](https://github.com/folke/noice.nvim)
- [none / null ls](https://github.com/nvimtools/none-ls.nvim)
- [nvchad](https://github.com/NvChad/NvChad)
- [nvim autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim dap](https://github.com/mfussenegger/nvim-dap)
- [nvim dap ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-lint](https://github.com/mfussenegger/nvim-lint)
- [nvim surround](https://github.com/kylechui/nvim-surround)
- [nvim treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim plenery](https://github.com/nvim-lua/plenary.nvim)
- [nvzone](https://github.com/nvzone)
- [remote nvim](https://github.com/amitds1997/remote-nvim.nvim)
- [remote sshfs](https://github.com/nosduco/remote-sshfs.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [undotree](https://github.com/mbbill/undotree)
- [vim tex](https://github.com/lervag/vimtex)
- [vim tex previewer](https://github.com/xuhdev/vim-latex-live-preview)
- [vim tmux navigator](https://github.com/christoomey/vim-tmux-navigator)
- [whichkey](https://github.com/folke/which-key.nvim)
