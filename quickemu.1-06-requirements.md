When installing from source, you will need to install the following requirements manually:

- [QEMU](https://www.qemu.org/) (*6.0.0 or newer*) **with GTK, SDL,
    SPICE & VirtFS support**
- [bash](https://www.gnu.org/software/bash/) (*4.0 or newer*)
- [Coreutils](https://www.gnu.org/software/coreutils/)
- [curl](https://curl.se/)
- [EDK II](https://github.com/tianocore/edk2)
- [gawk](https://www.gnu.org/software/gawk/)
- [grep](https://www.gnu.org/software/grep/)
- [glxinfo](https://gitlab.freedesktop.org/mesa/demos)
- [jq](https://stedolan.github.io/jq/)
- [LSB](https://wiki.linuxfoundation.org/lsb/start)
- [pciutils](https://github.com/pciutils/pciutils)
- [procps](https://gitlab.com/procps-ng/procps)
- [python3](https://www.python.org/)
- [mkisofs](http://cdrtools.sourceforge.net/private/cdrecord.html)
- [usbutils](https://github.com/gregkh/usbutils)
- [util-linux](https://github.com/karelzak/util-linux)
- [sed](https://www.gnu.org/software/sed/)
- [socat](http://www.dest-unreach.org/socat/)
- [spicy](https://gitlab.freedesktop.org/spice/spice-gtk)
- [swtpm](https://github.com/stefanberger/swtpm)
- [xdg-user-dirs](https://www.freedesktop.org/wiki/Software/xdg-user-dirs/)
- [xrandr](https://gitlab.freedesktop.org/xorg/app/xrandr)
- [zsync](http://zsync.moria.org.uk/)
- [unzip](http://www.info-zip.org/UnZip.html)

For Ubuntu, Arch and NixOS hosts, the
[ppa](https://launchpad.net/~flexiondotorg/+archive/ubuntu/quickemu),
[AUR](https://aur.archlinux.org/packages/quickemu) or
[nix](https://github.com/NixOS/nixpkgs/tree/master/pkgs/development/quickemu)
packaging will take care of the dependencies. For other host
distributions or operating systems it will be necessary to install the
above requirements or their equivalents.

These examples may save a little typing:

#### Install requirements on Debian hosts

This also applies to derivatives:

``` shell
sudo apt install qemu bash coreutils ovmf grep jq mesa-utils pciutils procps python3 genisoimage usbutils util-linux sed socat spice-client-gtk libtss2-tcti-swtpm0 xdg-user-dirs zsync unzip
```

#### Install requirements on Fedora hosts

``` shell
sudo dnf install qemu bash coreutils edk2-tools grep jq mesa-demos pciutils procps python3 genisoimage usbutils util-linux sed socat spice-gtk-tools swtpm xdg-user-dirs xrandr unzip
```

### Install requirements on Gentoo

Please note that you may have to use `sys-firmware/edk2-ovmf` instead of `sys-firmware/edk2-ovmf-bin` - depending on how your system is configured.

``` shell
sudo emerge --ask --noreplace app-emulation/qemu \
 app-shells/bash \
 sys-apps/coreutils \
 net-misc/curl \
 sys-firmware/edk2-ovmf-bin \
 sys-apps/gawk \
 sys-apps/grep \
 x11-apps/mesa-progs \
 app-misc/jq \
 sys-apps/pciutils \
 sys-process/procps \
 app-cdr/cdrtools \
 sys-apps/usbutils \
 sys-apps/util-linux \
 sys-apps/sed \
 net-misc/socat \
 app-emulation/spice \
 app-crypt/swtpm \
 x11-misc/xdg-user-dirs \
 x11-apps/xrandr \
 net-misc/zsync \
 app-arch/unzip
```

#### Install requirements on macOS hosts

This is a **work in progress** (see [issue 447](https://github.com/quickemu-project/quickemu/issues/447)
for other steps and changes that may enable running on MacOS)

``` shell
brew install qemu bash coreutils curl grep jq pciutils python@3.10 cdrtools gnu-sed spice-gtk zsync
```
