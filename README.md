# My Neovim Configuration

![Neovim Screenshot](https://github.com/slesaryev/neovim-config/raw/main/screenshots/screenshot.jpg)

Welcome to my Neovim configuration! This setup is a continuous work in progress, aimed at optimizing my daily workflow. While it's already in active use, I'm making frequent changes to enhance and refine the setup.

## Installation

If you had previous nvim configuration installed, you need to back up them:

```
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

or, if you whish, you can simply delete them:

```
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
```

```
git clone --depth 1 https://github.com/slesaryev/neovim-config ~/.config/nvim
nvim
```

## License

This project is licensed under the [MIT License](LICENSE). While you are free to use, modify, and distribute this configuration, please note that it is primarily intended for personal use, and commercial resale of this configuration or its components is discouraged.

## Acknowledgments

I would like to express my gratitude to the following individuals and projects whose work has significantly contributed to my Neovim configuration:

- Take a look at the plugins folder for a comprehensive list of included plugins, each providing unique functionality and enhancements to the Neovim experience.

Snippets and inspirations were also drawn from various sources, and I appreciate the efforts of those who shared their code and ideas.

Feel free to explore and adapt this configuration to suit your needs. If you encounter any issues or have suggestions for improvements, don't hesitate to open an issue or contribute!
