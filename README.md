# .dotfiles

These dotfiles provide the following utils:

- [Starship](https://starship.rs/) prompt

## Installation

```sh
# Clone the repo
git clone git@github.com:kylebrantley/.dotfiles.git $HOME/.dotfiles

# Go to the dotfiles directory
cd $HOME/.dotfiles

# Install dotfiles
./install

git config -f ~/.gitlocal user.email "email@email.com"
git config -f ~/.gitlocal user.name "FirstName LastName"
```

## Oh My Zsh plugins

The following plugins are included:

- [`git`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
- [`ssh-agent`](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/ssh-agent)

## Starship

To customize Starship you can edit [starship.toml](./home/starship.toml). There are several [presets](https://starship.rs/presets/#presets) available and you can explore the configuration options [here](https://starship.rs/config/).

