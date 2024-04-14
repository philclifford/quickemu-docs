
## Introduction

**Quickemu** is a wrapper for the excellent [QEMU](https://www.qemu.org/) that attempts to
automatically *"do the right thing"*, rather than expose exhaustive configuration options.
You decide what operating system you want to run, and Quickemu will figure out the best
way to do it for you.

The original objective of the project was to enable [quick testing of
Linux distributions](#creating-linux-guests-) where the virtual machine configurations can be
stored anywhere (such as external USB storage or your home directory)
and no elevated permissions are required to run the virtual machines.

**Quickemu now also includes comprehensive support for [macOS](#creating-macos-guests-) and [Windows](#creating-windows-guests-)**.
