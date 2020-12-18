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

ImageMagick
-----------
ImageMagick cannot convert to pdf by default due to an [old security vulnerability](https://www.kb.cert.org/vuls/id/332928/) in ghostscript.

Edit `/etc/ImageMagick-7/policy.xml` with the following lines:
```bash
  <!-- <policy domain="delegate" rights="none" pattern="gs" /> -->
  <policy domain="coder" rights="read|write" pattern="PDF" />
```

