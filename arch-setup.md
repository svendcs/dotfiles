Arch Linux Setup
================
This file contains general guidelines for setting up my Arch Linux system. Use
this and also the [general recommendations](https://wiki.archlinux.org/index.php/General_recommendations)
from the Arch Wiki.

Checklist
---------
- [ ] Setup disk encryption
- [ ] Setup swap
- [ ] Install microcodes
- [ ] Set root password
- [ ] Setup admin user and add to the `wheel` group
- [ ] Setup UFW firewall
- [ ] Add ssh keys to the `.ssh/authorized_keys` file.
- [ ] Disable root- and password login via ssh
- [ ] Set hostname
- [ ] Update mirrors with reflector. See [mirrorupgrade.hook](system-config/mirrorupgrade.hook) for reference.
- [ ] Setup clock synchronization
- [ ] Setup lightdm display manager

Lightdm Setup
-------------
Make sure to enable the `lightdm` systemd service and update the file `/etc/lightdm/lightdm.conf` as follows:
```
[Seat:*]
...
greeter-session=io.elementary.greeter
user-session=i3
...
```

If you get an error along the lines of `failed to start session`, use the
solution described in the top answer on [this AskUbuntu post](https://askubuntu.com/questions/874850/16-10-lightdm-failed-to-start-session-with-i3).

Hostname
--------
Host names are selected based on characters and families from The Godfather
franchise. A few possible options would be `corleone`, `tattaglia`, `barzini`,
`cuneo`, `stracci`, `clemenza`, `brasi`, `sollozzo`, and `bonasera`.

Fonts
-----
Enable sub-pixel rendering and lcdfilter for better looking fonts
```bash
sudo ln -s /etc/fonts/conf.avail/11-lcdfilter-default.conf /etc/fonts/conf.d
sudo ln -s /etc/fonts/conf.avail/10-sub-pixel-rgb.conf /etc/fonts/conf.d
```

ImageMagick
-----------
ImageMagick cannot convert to pdf by default due to [an old security vulnerability](https://www.kb.cert.org/vuls/id/332928/) in ghostscript.

Fix this by editing `/etc/ImageMagick-7/policy.xml` with the following lines:
```bash
  <!-- <policy domain="delegate" rights="none" pattern="gs" /> -->
  <policy domain="coder" rights="read|write" pattern="PDF" />
```

