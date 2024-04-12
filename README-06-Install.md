## Installation

### Arch Linux hosts

Quickemu is available from the AUR (Arch user repository), and can be
installed via any AUR helper. Assuming your AUR helper is yay, Run the
following command:

``` bash
yay -Sy quickemu
```

### Ubuntu hosts

Quickemu is available from a PPA for Ubuntu users. The Quickemu PPA also
includes a back port of QEMU 6.0.0 for 20.04 (Focal) and 21.04
(Hirsute). To install Quickemu and all the dependencies run the
following in a terminal:

``` bash
sudo apt-add-repository ppa:flexiondotorg/quickemu
sudo apt update
sudo apt install quickemu
```

### NixOS hosts

To quickly try quickemu:

```sh
nix-shell -p quickemu
```

To install via Nix profile:

```sh
nix-env -iA pkgs.quickemu
```

To install via NixOS config:

```nix
# /etc/nixos/configuration.nix
{pkgs, ...}: {
   environment.systemPackages = with pkgs; 
     quickemu 
   };
}
```

To install via Flakes:

```sh
# TODO (flake users, please add an example!)
```

### Other Linux hosts (installing from source)

``` bash
git clone --filter=blob:none https://github.com/wimpysworld/quickemu
cd quickemu
```

