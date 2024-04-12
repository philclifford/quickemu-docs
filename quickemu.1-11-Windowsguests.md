## Creating Windows guests 🪟

`quickget` can download
[**Windows 10**](https://www.microsoft.com/software-download/windows10) and
[**Windows 11**](https://www.microsoft.com/software-download/windows11)
automatically and create an optimised virtual machine configuration.
This configuration also includes the [VirtIO drivers for
Windows](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/).

**Windows 8.1** is also supported but doesn't feature any automated
installation or driver optimisation.

`quickget` can also download [Windows 10 LTSC](https://www.microsoft.com/en-us/evalcenter/download-windows-10-enterprise) and Windows Server [2012-r2](https://www.microsoft.com/en-us/evalcenter/download-windows-server-2012-r2), [2016](https://www.microsoft.com/en-us/evalcenter/download-windows-server-2016), [2019](https://www.microsoft.com/en-us/evalcenter/download-windows-server-2019), and [2022](https://www.microsoft.com/en-us/evalcenter/download-windows-server-2022). No automated installation is supported for these releases.

``` bash
quickget windows 11
quickemu --vm windows-11.conf
```

- Complete the installation as you normally would.
- All relevant drivers and services should be installed automatically.
- A local administrator user account is automatically created, with
    these credentials:
    - Username: `Quickemu`
    - Password: `quickemu`

### Regional versions

By default `quickget` will download the *"English International"* release (*"English (United States)"* for server releases),
but you can optionally specify one of the supported languages: For example:

``` bash
quickget windows 11 "Chinese (Traditional)"
```

The default Windows 11 configuration looks like this:

``` bash
guest_os="windows"
disk_img="windows-11/disk.qcow2"
iso="windows-11/windows-11.iso"
fixed_iso="windows-11/virtio-win.iso"
tpm="on"
secureboot="off"
```

- `guest_os="windows"` instructs `quickemu` to optimise for Windows.
- `fixed_iso=` specifies the ISO image that provides VirtIO drivers.
- `tpm="on"` instructs `quickemu` to create a software emulated TPM
    device using `swtpm`.
