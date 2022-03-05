
DECTOOLS
==========

*A collection of semi-useful tools made for GNU/Linux and more specificly Arch-linux, though most tools will work on any Linux distro just as well.*

> Some may work on macOS, though functionality isn't a priority.

*Depenencies: `python`, `bash`, and `pip`*

# Install

## Compile from source

*Build Dependencies: `rust`*

clone and run the install script

> note: the install script will compile and install everything for you.

```shell
git clone https://github.com/El-Wumbus/dectools.git
cd dectools
sudo chmod u+x ./install.sh
./install.sh
```

## Install pre-compiled *binaries*

***NOT AVALIBLE IN DEVELOPMENT***

# Tools

- `htminify` - A bash script that quickly minifies html and css.

### example

[![asciicast](https://asciinema.org/a/UrK0zTDwZeVA0qfpDdijE8a1A.svg)](https://asciinema.org/a/UrK0zTDwZeVA0qfpDdijE8a1A)
> This is not a video, you can copy and paste, as well as other things.

- `dspeedtest` - A python script to check internet connection and test network speed

#### example

[![asciicast](https://asciinema.org/a/473974.svg)](https://asciinema.org/a/473974)

- `extract` - Perhaps the most useful script in this repo; this script allows for quick extraction of archives(compressed or otherwise) with the appropriate file extensions. This script simplifies extraction of archives.

> [supported formats](https://github.com/El-Wumbus/dectools/blob/development/Docs/ExtractSupportedFileTypes.md)

### example

[![asciicast](https://asciinema.org/a/dL4Nlw3IoVAOtAms38o5uezMR.svg)](https://asciinema.org/a/dL4Nlw3IoVAOtAms38o5uezMR)

- `dnamegen` - A python script to generate random first and last names.

### example

[![asciicast](https://asciinema.org/a/473926.svg)](https://asciinema.org/a/473926)

- `dpassgen` - random password generator. get usage by typing `dpassgen usage`

### example

[![asciicast](https://asciinema.org/a/473989.svg)](https://asciinema.org/a/473989)

- More misc tools...  
