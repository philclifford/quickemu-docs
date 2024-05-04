# Quick start

[Once Quickemu is installed](https://github.com/quickemu-project/quickemu/wiki/01-Installation), there are two simple steps to create and run a virtual machine:

- `quickget` automatically downloads the ISO image for the operating system you want to run and creates a configuration file for the virtual machine.

```shell
quickget nixos unstable
```

- `quickemu` starts the virtual machine using the configuration file created by `quickget`.

```shell
quickemu --vm nixos-unstable.conf
```
- Execute `quickget` (with no arguments) to see a list of all the supported operating systems.
