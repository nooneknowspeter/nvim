# nooneknows neovim configuration / setup

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

- [conform](https://github.com/stevearc/conform.nvim)
- [lazyvim](https://github.com/LazyVim/LazyVim)
- [lua](https://lua.org/)
- [multicursors](https://github.com/smoka7/multicursors.nvim)
- [nerdfonts](https://www.nerdfonts.com/)
- [neovim](https://github.com/neovim/neovim)
- [neovimlsp](https://github.com/neovim/nvim-lspconfig)
- [nvchad](https://github.com/NvChad/NvChad)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
