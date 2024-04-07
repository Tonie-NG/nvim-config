## Configuration Template for Neovim

🎨 A minimal Neovim setup crafted to align with my coding preferences.

### 🔧 Installation
> To use this, make sure you have neovim and git installed.

Backup current nvim config.
```bash
mv  ~/.config/nvim  ~/.config/nvim-backup
mv ~/.local/share/nvim ~/.local/share/nvim-backup
```

Clone this repository.
```bash
https://github.com/tonie-ng/nvim-config.git ~/.config/nvim && nvim
```
> This will also open nvim if the clone was successful. Select `n` on the initial prompt (my opinion, this will reject the starter config from NvChad and use the one provided in this repo).

Install LSPs using mason
```bash
:MasonInstallAll
```
> This should normally install lsps included within the ensure installed options. You can select the LSPs you want from the menu on your screen and pressing `I` to install.

Enable syntax highlighting by installing the tree-sitter plugin for the language of your choice.
```bash
:TSIntall <language>

ie.
:TSIntall go
```

To enable wakatime, type
```bash
:WakaTimeApiKey
```
> You'll be prompted to provide your api key, please go ahead and do that.

Lastly Ripgrep is required for grep searching with Telescope. Install it if you want that feature.

This config is based on [NvChad](https://nvchad.com/), you should check it out for more customization options.
