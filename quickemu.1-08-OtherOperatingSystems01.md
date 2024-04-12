You can also use `quickget` with options to:

``` shell
    # show an OS ISO download URL for {os} {release} [edition] 
    quickget --show-iso-url fedora 38 Silverblue   
    # test if an OS ISO is available for {os} {release} [edition]
    quickget --test-iso-url nixos 23.05 plasma5
    # open an OS distribution homepage in a browser
    quickget --open-distro-homepage  ubuntu-mate
    # Only download image file into current directory, without creating VM
    quickget --download-iso elementary 7.1
```

The `--show-iso-url`, `--test-iso-url`, and `--download-iso` options are fully
functional for all operating systems, including Windows and macOS.

### Other Operating Systems

`quickget` also supports:
