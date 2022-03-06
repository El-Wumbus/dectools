
# DECTOOLS

For an updated version of this page, visit *[The Decator wiki](https://el-wumbus.github.io/wiki)*

>Development Branch

*A collection of semi-useful tools made for GNU/Linux.*

> Some may work on macOS, though functionality isn't a priority.

*Depenencies: `python`, `bash`, and `pip`*

## Install

### Compile from source

*Build Dependencies: `rust`*

Clone and run the install script

> note: the install script will compile and install everything for you.

```shell
git clone https://github.com/El-Wumbus/dectools.git
cd dectools
sudo chmod u+x ./install.sh
./install.sh
```

### Install Using *pre-compiled binaries*

***NOT AVALIBLE IN DEVELOPMENT***

## Tools

- `htminify` - A bash script that quickly minifies html and css. *[example](https://asciinema.org/a/UrK0zTDwZeVA0qfpDdijE8a1A)*

- `dspeedtest` - A python script to check internet connection and test network speed. *[example](https://asciinema.org/a/473974)*

- `extract` - Perhaps the most useful script in this repo; this script allows for quick extraction of archives(compressed or otherwise) with the appropriate file extensions. This script simplifies extraction of archives.  *[example](https://asciinema.org/a/dL4Nlw3IoVAOtAms38o5uezMR)*

> [supported formats](https://github.com/El-Wumbus/dectools/blob/development/Docs/ExtractSupportedFileTypes.md)

- `dnamegen` - A python script to generate random first and last names. *[example](https://asciinema.org/a/473926)*

- `dpassgen` - random password generator. get usage by typing `dpassgen usage`. *[example](https://asciinema.org/a/473989)*

- `findusb` - Lists USB devices.

- `dkbackup` and `dkrestore` - an attempt at backing up / resoring kde configuration. ***Untested***

- `expertc` - A useful terminal calculator written in rust.

To Learn how to use all tools visit *[The Decator wiki](https://el-wumbus.github.io/wiki)*
