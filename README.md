Svend's Dotfiles
================
This repository contains my dotfiles that I have tweaked over the years.
Everything is optimized for a dual-monitor desktop setup.

<table>
  <tr>
    <th>OS</th>
    <th>Desktop Environment</th>
    <th>Terminal</th>
    <th>Shell</th>
    <th>Editor</th>
    <th>Font</th>
  </tr>
  <tr>
    <td>Arch Linux</td>
    <td>i3 wm</td>
    <td>Alacritty</td>
    <td>Zsh</td>
    <td>Neovim</td>
    <td>Noto Sans Mono</td>
  </tr>
</table>

Installing
----------
The entire setup can be installed by roughly following the steps below:

1. Install a base arch linux system by following the standard arch linux install guide.
2. Install system packages listed in [packages.md](packages.md).
3. Install system-wide configuration files by running `sudo ./install-system`.
4. Add smaller system-wide tweaks as described in [tweaks.md](tweaks.md).
5. Clone the repository and run ./install to symlink the dotfiles into place.
   If a file already exists you will be prompted to overwrite it.

