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
```
https://github.com/tonie-ng/nvim-config.git ~/.config/nvim && nvim
```
> This will also open nvim if the clone was successfull. Select `n`

Install LSPs using mason
```
:MasonInstallAll
```
> This shoudl normally install lsps included within the ensure installed options but for some reason it doesn't. You can Select the lsps you want from the menu on your screen by pressing `I`.

To enable wakatime, type
```
:WakaTimeApiKey
```
> You'll be prompted to provide your api key, please go ahead and do that.

Lastly Ripgrep is required for grep searching with Telescope. Install it if you want that feature.

This config is based on [NvChad](https://nvchad.com/), you should check it out for more customization options.
