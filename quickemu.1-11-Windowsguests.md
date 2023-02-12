
## Windows 10 & 11 Guests

`quickget` can not download
[Windows10](https://www.microsoft.com/software-download/windows10) and
[Windows 11](https://www.microsoft.com/software-download/windows11) automatically,
but does automatically create an optimised virtual machine configuration that
you can just add an Windows .iso image to. This configuration also includes the
[VirtIO drivers for Windows](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/).

```bash
quickget windows 11
quickemu --vm windows-11.conf
```

* Complete the installation as you normally would.
* All relevant drivers and services should be installed automatically.
* A local adminstrator user account is automatically created, with these credentials:
  -   Username: `Quickemu`
  -   Password: `quickemu`


The default Windows 11 configuration looks like this:

```bash
guest_os="windows"
disk_img="windows-11/disk.qcow2"
iso="windows-11/windows-11.iso"
fixed_iso="windows-11/virtio-win.iso"
tpm="on"
secureboot="on"
```

* `guest_os="windows"` instructs `quickemu` to optimise for Windows.
* `fixed_iso=` specifies the ISO image that provides VirtIO drivers.
* `tpm="on"` instructs `quickemu` to create a software emulated TPM device using `swtpm`.
