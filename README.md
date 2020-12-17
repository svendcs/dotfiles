Svend's Dotfiles
================
This repository contains my dotfiles that I have tweaked over the years.
Everything is optimized for a dual-monitor desktop setup.

<table>
  <tr>
    <th>OS</th>
    <th>Desktop</th>
    <th>Terminal</th>
    <th>Shell</th>
    <th>Editor</th>
    <th>Font</th>
    <th>Colors</th>
  </tr>
  <tr>
    <td>[Arch Linux](https://www.archlinux.org/)</td>
    <td>[i3 wm](https://i3wm.org/) with [polybar](https://github.com/polybar/polybar)</td>
    <td>[Alacritty](https://github.com/alacritty/alacritty)</td>
    <td>[Zsh](https://wiki.archlinux.org/index.php/Zsh)</td>
    <td>[Neovim](https://neovim.io/)</td>
    <td>[Noto Sans Mono](https://www.google.com/get/noto/)</td>
    <td>[Nord](https://www.nordtheme.com/)</td>
  </tr>
</table>

Installing
----------
The entire setup can be installed by roughly following the steps below:

1. Install a base arch linux system by following the standard arch linux install guide.
2. Install system packages listed in [packages.md](packages.md).
3. Install system-wide configuration files by running `sudo ./install-system`.
4. Add smaller system-wide tweaks as described in [tweaks.md](tweaks.md).
5. Clone the repository and run `./install` to symlink the dotfiles into place.
   If a file already exists you will be prompted to overwrite it.

