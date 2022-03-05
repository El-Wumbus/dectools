
DECTOOLS
==========

*A collection of semi-useful tools made for GNU/Linux and more specificly Arch-linux, though most tools will work on any Linux distro just as well.*

> Some may work onm macOS, though functionality isn't a priority.

*Depenencies: `python`, `bash`, and `pyton-pip`*

# Install

## Compile from source

*Build Dependencies: `rust`, and `gcc`*

clone and run the install script

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

- `dlist` - A script to list things like the users in `/etc/profile` or the shells avilible to the system  

### example

[![asciicast](https://asciinema.org/a/BrQnlA1bTXzhLk6VhAHWrZGEA.svg)](https://asciinema.org/a/BrQnlA1bTXzhLk6VhAHWrZGEA)

- extract - Perhaps the most useful script in this repo; this script allows for quick extraction of archives(compressed or otherwise) with the appropriate file extensions. This script simplifies extraction of archives.

> [supported formats](https://github.com/El-Wumbus/dectools/blob/development/Docs/ExtractSupportedFileTypes.md)

### example

[![asciicast](https://asciinema.org/a/dL4Nlw3IoVAOtAms38o5uezMR.svg)](https://asciinema.org/a/dL4Nlw3IoVAOtAms38o5uezMR)

- namegen - A python script to generate random first and last names.

### example

[![asciicast](https://asciinema.org/a/473926.svg)](https://asciinema.org/a/473926)

- More misc tools...