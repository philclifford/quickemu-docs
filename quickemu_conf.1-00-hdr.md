---
title: QUICKEMU_CONF
section: 1
header: Quickemu Configuration Manual
footer: quickemu_conf
date: April 17, 2024
author: Martin Wimpress
---

# NAME

quickemu_conf - Options and parameters in the quickemu \<vm\>.conf

# DESCRIPTION

**quickemu** will create and run highly optimised desktop virtual machines for Linux,
macOS and Windows.  It uses sensible defaults, but many configuration options can be overridden
in the required configuration file, which will as a minimum specify the path to the installation
ISO and QEMU disk for the installed VM

# OPTIONS

These are the options and defaults for the \<vm\>.conf file

``` shell
# Lowercase variables are used in the VM config file only
boot="efi"
cpu_cores=""
disk_img=""
disk_size=""
display=""
extra_args=""
fixed_iso=""
floppy=""
guest_os="linux"
img=""
iso=""
macaddr=""
macos_release=""
network=""
port_forwards=()
preallocation="off"
ram=""
secureboot="off"
tpm="off"
usb_devices=()
viewer="spicy"
ssh_port=""
spice_port=""
public_dir=""
monitor="socket"
monitor_telnet_port="4440"
monitor_telnet_host="localhost"
monitor_cmd=""
serial="socket"
serial_telnet_port="6660"
serial_telnet_host="localhost"
# options: ehci(USB2.0), xhci(USB3.0)
usb_controller="ehci"
# options: ps2, usb, virtio
keyboard="usb"
keyboard_layout="en-us"
# options: ps2, usb, tablet, virtio
mouse="tablet"
```

# EXAMPLES

``` shell
guest_os="linux"
disk_img="debian-bullseye/disk.qcow2"
iso="debian-bullseye/firmware-11.0.0-amd64-DVD-1.iso"
```

The default macOS configuration looks like this:

``` shell
guest_os="macos"
img="macos-catalina/RecoveryImage.img"
disk_img="macos-catalina/disk.qcow2"
macos_release="catalina"
```

* `guest_os="macos"` instructs Quickemu to optimise for macOS.
* `macos_release="catalina"` instructs Quickemu to optimise for a particular macOS release.
  * For example VirtIO Network and Memory Ballooning are available in Big Sur and newer, but not previous releases.
  * And VirtIO Block Media (disks) are supported/stable in Catalina and newer.

The default Windows 11 configuration looks like this:

``` shell
guest_os="windows"
disk_img="windows-11/disk.qcow2"
iso="windows-11/Win11_EnglishInternational_x64.iso"
fixed_iso="windows-11/virtio-win.iso"
tpm="on"
secureboot="on"
```

* `guest_os="windows"` instructs `quickemu` to optimise for Windows.
* `fixed_iso=` specifies the ISO image that provides VirtIO drivers.
* `tpm="on"` instructs `quickemu` to create a software emulated TPM device using `swtpm`.
