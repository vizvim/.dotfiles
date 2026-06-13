# .dotfiles

These dotfiles provide the following utils:

- [Starship](https://starship.rs/) prompt

## Installation

These dotfiles are managed with [GNU stow](https://www.gnu.org/software/stow/).
Each top-level directory (`bat`, `nvim`, `starship`, …) is a stow package whose
contents mirror the layout under `$HOME`.

```sh
# Clone the repo
git clone git@github.com:kylebrantley/.dotfiles.git $HOME/.dotfiles

# Go to the dotfiles directory
cd $HOME/.dotfiles

# Install Homebrew packages (including stow) and symlink everything
./scripts/bootstrap

git config -f ~/.gitlocal user.email "email@email.com"
git config -f ~/.gitlocal user.name "FirstName LastName"
```

To (re)link the packages manually after the initial bootstrap:

```sh
# Link a single package, e.g. starship
stow --restow --target="$HOME" starship

# Or link everything (custom/ and scripts/ are ignored via .stow-local-ignore)
stow --restow --target="$HOME" */
```

## Oh My Zsh plugins

The following plugins are included:

- [`git`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [`ssh-agent`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent)

## Starship

To customize Starship you can edit [starship.toml](./starship/.config/starship.toml). There are several [presets](https://starship.rs/presets/#presets) available and you can explore the configuration options [here](https://starship.rs/config/).

