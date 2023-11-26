---
title: QUICKGET
section: 1
header: Quickget User Manual
footer: quickget
date: November 26, 2023
author: Martin Wimpress
---

# NAME

quickget - download and prepare materials for building a quickemu VM

# SYNOPSIS

**quickget** [*os*] [*release*] [*edition*] | [*OPTION*]*

# DESCRIPTION

**quickget** will download the requisite materials and prepare a configuration for `quickemu` to use to build and run

# OPTIONS

**version | -version | --version**
: show version (from Quickemu)

**list | list_csv | list_json**
: provide a csv list of all supported guest OSes, versions and variants.

**```--show-iso-url``` | -s** {**os**} {**release**} [**edition**]
: show ISO download URL

**```--test-iso-url``` | -t** {**os**} {**release**} [**edition**]
: test if ISO is available

**```--open-distro-homepage``` | -o** {**os**}
: open OS homepage in browser

**[OS] [Release] [Edition]**
: specify the OS and release (and optional edition)
if insufficient input is provided a list of missing options will be reported and the script will exit.  Editions may not apply and will be defaulted if not provided.

# NOTES