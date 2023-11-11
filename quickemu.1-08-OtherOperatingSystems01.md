You can also use `quickget` with options to:    

```shell
    # show an OS ISO download URL for {os} {release} [edition] 
    quickget --show-iso-url fedora 38 Silverblue   
    # test if and OS ISO is available for {os} {release} [edition]
    quickget --test-iso-url nixos 23.05 plasma5
    # open an OS distribution homepage in a browser
    quickget --open-distro-homepage  ubuntu-mate
```

The `--show-iso-url` and `--test-iso-url` options **do not** work for `Windows` (`quickget`  will begin downloading the requested release and edition of windows)


Other Operating Systems
-----------------------

`quickget` also supports:  
