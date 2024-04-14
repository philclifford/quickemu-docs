## Desktop shortcuts

Desktop shortcuts can be created for a VM, the shortcuts are saved in
`~/.local/share/applications`. Here is an example of how to create a
shortcut.

``` shell
quickemu --vm ubuntu-22.04-desktop.conf --shortcut
```

## Screen and window size (Linux guests only)

`qemu` will always default to the primary monitor to display the VM's
window.

Without the `--screen` option, `quickemu` will look for the size of the
smallest monitor, and use a size that fits on said monitor.

The `--screen` option forces `quickemu` to use the size of the given
monitor to compute the size of the window. **It won't use that monitor
to display the VM's window if it's not the primary monitor**. This is
useful if the primary monitor if not the smallest one, and if the VM's
window doesn't need to be moved around.

The `--screen` option is also useful with the `--fullscreen` option,
again because `qemu` will always use the primary monitor. In order for
the fullscreen mode to work properly, the resolution of the VM's window
must match the resolution of the screen.

To know which screen to use, type:

``` shell
xrandr --listmonitors | grep -v Monitors
```

The command will output something like this:

``` shell
 0: +*HDMI-0 2560/597x1440/336+1920+0  HDMI-0
 1: +DVI-D-0 1920/527x1080/296+0+0  DVI-D-0
```

The first number is what needs to be passed to the `--screen` option.

For example:

``` shell
quickemu --vm vm.conf --screen 0
```

The above uses the 2560x1440 screen to compute the size of the window,
which Quickemu sizes to 2048x1152. Without the `--screen` option,
Quickemu would have used the 1920x1080 monitor which results in a window
size of 1664x936.

The '--screenpct' is an optional integer value between 25 \<= pct \< 100
which will override system default screen sizes. The VM size will be
'pct' of the chosen screen. **If --fullscreen is chosen screen will be
fullsize instead of being scaled down by --screenpct value.**
