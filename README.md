# quickemu-docs
Build environment for Quickemu project documentation

This is aimed at being a submodule for generating and placing
documentation and manual pages.

It consists of a `Makefile` that calls a script (`build_manuals`) which generates the [README](../README.md)
and the contents of [../docs](../docs)

It does this by using a set of parts according to the recipe build in and by the Makefile. To update the 3 manual pages, the markdown sources and
the main project README.md edit or add to the parts, paying attention to ordering and inclusion of new parts in appropriate recipes, then run `make clean;make`.  This will generate parts of the documentation by running the software itself to ensure consistency and current alignment.
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
quickemu.1-14-AllquickemuOptions-01hdr.md
quickemu.1-14-AllquickemuOptions-03tail.md
quickemu.1-15-UsageNotes.md
quickemu.1-20-References.md
quickemu_conf.1-01-spiceheadless.md

README-06-Install.md
README-135-accessibility.md
README-135-confoptions.md
```
