Arch Tweaks
===========
This file lists all the minor tweaks done to my installation of Arch Linux.

Fonts
-----
Enable sub-pixel rendering and lcdfilter for better looking fonts
```bash
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
```

