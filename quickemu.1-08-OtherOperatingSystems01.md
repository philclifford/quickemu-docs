You can also use `quickget` with advanced options :


``` text
  -[12345]              <os>           : Show info* about OS
  --download       (-d) <os> <re> [ed] : Download image; no VM configuration
  --create-config (-cc) <os> [path/url]: Create default VM config for image
  --open-homepage  (-o) <os>           : Open homepage for the OS
  --version        (-v)                : Show version
  --help           (-h)                : Show this help message
  --url            (-u) [os] [re] [ed] : Show image URL(s)
  --check          (-c) [os] [re] [ed] : Check image URL(s)
  --list           (-l)                : List all supported systems
  --list-csv      (-lc)                : List everything in csv format
  --list-json     (-lj)                : List everything in json format

```


Here are some typical uses

``` shell
    # show an OS ISO download URL for {os} {release} [edition]
    quickget --url fedora 38 Silverblue
    # test if an OS ISO is available for {os} {release} [edition]
    quickget --check nixos unstable plasma5
    # open an OS distribution homepage in a browser
    quickget --open-homepage  ubuntu-mate
    # Only download image file into current directory, without creating VM
    quickget --download elementary 7.1
```

The `--url`, `--check`, and `--download` options are fully
functional for all operating systems, including Windows and macOS.

Further information is available from the project [wiki](https://github.com/quickemu-project/quickemu/wiki/06-Advanced-quickget-features)

### Other Operating Systems

`quickget` also supports:
