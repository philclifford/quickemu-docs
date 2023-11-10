
## Windows 8, 10 & 11 Guests

`quickget` can download
[Windows10](https://www.microsoft.com/software-download/windows10) and
[Windows 11](https://www.microsoft.com/software-download/windows11) automatically
and create an optimised virtual machine configuration.  This configuration also
includes the
[VirtIO drivers for Windows](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/).

Windows 8.1 is also supported but doesn't feature any automated installation or
driver optimisation.


```bash
quickget windows 11
quickemu --vm windows-11.conf
```

* Complete the installation as you normally would.
* All relevant drivers and services should be installed automatically.
* A local administrator user account is automatically created, with these credentials:
  -   Username: `Quickemu`
  -   Password: `quickemu`


The default Windows 11 configuration looks like this:

```bash
guest_os="windows"
disk_img="windows-11/disk.qcow2"
iso="windows-11/windows-11.iso"
fixed_iso="windows-11/virtio-win.iso"
tpm="on"
secureboot="off"
```

* `guest_os="windows"` instructs `quickemu` to optimise for Windows.
* `fixed_iso=` specifies the ISO image that provides VirtIO drivers.
* `tpm="on"` instructs `quickemu` to create a software emulated TPM device using `swtpm`.
