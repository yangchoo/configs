## Preamble
Collection of shell config stuff

## Directions
```shell
git clone --no-checkout git@github.com:yangchoo/configs.git
cd configs
git config core.worktree "../../"
git reset --hard origin/master
```

## Fresh Install
### Steps after clone for working zsh
1. Install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
2. Install [powerlevel theme](https://github.com/romkatv/powerlevel10k#oh-my-zsh)
3. Install [fzf](https://github.com/junegunn/fzf#installation)
4. Install zsh plugins (git clone)
    - [autoupdate](https://github.com/TamCore/autoupdate-oh-my-zsh-plugins) - Keep custom plugins auto-updated
    - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh) - Better shell history search (ctrl-r)
    - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh) - Clearer highlighting of shell commands
    - [zsh-nvm](https://github.com/lukechilds/zsh-nvm#as-an-oh-my-zsh-custom-plugin) - Manage node using nvm

### Optional Neovim setup
1. Install Language servers
    - [pyright](https://github.com/microsoft/pyright) - Python langserver. `npm install -g pyright`
    - [bash](https://github.com/bash-lsp/bash-language-server) - Bash langserver. `npm install -g bash-language-server`

### Optional Tmux setup
1. Install [tpm (tmux plugin manager)](https://github.com/tmux-plugins/tpm#installation)

### Generally Useful Shell Utils
Install via package manager (apt, pamac, port, etc.)
1. tmux - terminal multiplexer
2. ripgrep - fast grep
3. fd - fast find
