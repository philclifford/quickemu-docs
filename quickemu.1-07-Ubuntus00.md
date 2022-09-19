
## Ubuntu Guest

`quickget` will automatically download an Ubuntu release and create the
virtual machine configuration.

```bash
quickget ubuntu 22.04
quickemu --vm ubuntu-22.04.conf
```

* Complete the installation as normal.
* Post-install:
  * Install the SPICE agent (`spice-vdagent`) in the guest to enable copy/paste and USB redirection
    * `sudo apt install spice-vdagent`
  * Install the SPICE WebDAV agent (`spice-webdavd`) in the guest to enable file sharing.
    * `sudo apt install spice-webdavd`

### Ubuntu devel (daily-live) images

`quickget` can also download/refresh devel images via `zsync` for Ubuntu
developers and testers.

```bash
quickget ubuntu devel
quickemu --vm ubuntu-devel.conf
```

You can run `quickget ubuntu devel` to refresh your daily development image as
often as you like, it will even automatically switch to a new series.