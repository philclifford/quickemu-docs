# quickemu-docs

Build environment for Quickemu project documentation

[![CodeFactor](https://www.codefactor.io/repository/github/philclifford/quickemu-docs/badge/main)](https://www.codefactor.io/repository/github/philclifford/quickemu-docs/overview/main)

This is aimed at being a submodule for generating and placing
documentation and manual pages.

It consists of a `Makefile` that calls a script (`build_manuals`) which generates the [README](../README.md)
and the contents of [../docs](../docs)

It does this by using a set of parts according to the recipe build in and by the Makefile. To update the 3 manual pages, the markdown sources and
the main project README.md edit or add to the parts, paying
 attention to ordering and inclusion of new parts in appropriate recipes, then run `make clean;make`.  This
 will generate parts of the documentation by running the software itself to ensure consistency and current alignment.
The Makefile here can also be used (with sudo) to install the man pages and or the software.

The parts list currently consists of:

```text
##  Tops and tails
quickemu.1-01-head.md
quickemu_conf.1-00-hdr.md
quickemu_conf.1-05-footer.md
quickget.1-00-header.md
quickget.1-09-footer.md
README-00-hdr.md
quickemu.1-30-Footers.md

# The static parts
quickemu.1-02-options.md
quickemu.1-03-examples.md
quickemu.1-04-intro.md
quickemu.1-08-OtherOperatingSystems01.md
quickemu.1-05-features01.md
quickemu.1-09-othermanualguests.md
quickemu.1-06a-GUI.md
quickemu.1-06-requirements.md
quickemu.1-07-Ubuntus00.md
quickemu.1-07-Ubuntus01.md
quickemu.1-10-macOSguests.md
quickemu.1-11-Windowsguests.md
quickemu.1-13-OtherGuests01.md
quickemu.1-15-UsageNotes.md
quickemu.1-20-References.md
quickemu_conf.1-01-spiceheadless.md

README-06-Install.md
README-135-accessibility.md
README-135-confoptions.md

```

The process requires

* a recent version of `pandoc`
  * ( which you can obtain with `deb-get install pandoc` - if you have  [`deb-get`](https://github.com/wimpysworld/deb-get) )
* `cog` (install with `pip3 install cogapp`)

## Building the docs

You will need this submodule checked out appropriately under a clone of the `quickemu` repo.  The build uses `../quickemu` for the most part, so will build docs
based on the the position in this submodule but consistent with the version of software in the parent directory. `cog` updates are designed to happen within the
parent repo (so they can happen in GitHub too ), so the Makefile will enforce a symlink to appear here pointing to `../quickemu`

The general flow of the build is:

```

# in the `quickemu` clone
git pull # or checkout <branch> ...
cd build_docs
make clean
make

```

This should result in a perfect and consistent set of markdown docs and `man` pages in `../docs/` and also the matching `../README.md`
It is essential to check and preview the generated assets before
committing them or installing them since mistakes are easy, helpful software sometimes is too helpful, and `pandoc`, `cog` and github markdown sometimes choose
to fight rather than cooperate so small edits or patches may be needed to achieve satisfactory outcomes. (Currently this revolves around ensuring the
`cog` commented sections and what follows are correctly situated and the terminating `cog` comment has not stepped over a code fence).

Once satisfied, you can optionally `install` the `man` pages so generated (and even the versions of the executables ) with

`sudo make  install_{docs|bins}`
or
`sudo make install`

and/or if the parent is checked out on a branch for submiting or updating a PR upstream, then

```
cd ..
git add README.md docs/*
git commit
git push
```
