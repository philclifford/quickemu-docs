---
title: QUICKGET
section: 1
header: Quickget User Manual
footer: quickget
date: June 24, 2024
author: Martin Wimpress
---

# NAME

quickget - download and prepare materials for building a quickemu VM

# SYNOPSIS

**quickget** [*os*] [*release*] [*edition*] | [*OPTION*]*

# DESCRIPTION

**quickget** will download the requisite materials and prepare a configuration for `quickemu` to use to build and run

# OPTIONS

**[OS] [Release] [Edition]**
: specify the OS and release (and optional edition)
if insufficient input is provided a list of missing options will be reported and the script will exit.  Editions may not apply and will be defaulted if not provided.

**\-\-download** <os> <release> [edition]
: Download image; no VM configuration

**\-\-create-config** <os> [path/url]
: Create VM config for a OS image

**\-\-open-homepage** <os>
: Open homepage for the OS

**\-\-show** [os]
: Show OS information

**\-\-url** [os] [release] [edition]
: Show image URL(s)

**\-\-check** [os] [release] [edition]
: Check image URL(s)

**\-\-list**
: List all supported systems

**\-\-list-csv**
: List everything in csv format

**\-\-list-json**
: List everything in json format

**\-\-version**
: Show version

**\-\-help**
: Show this help message

# NOTES
