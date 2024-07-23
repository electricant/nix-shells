# nix-shells
Collection of shell.nix files I use for developing stuff

cd into the desired directory and run ``nix-shell``.

## Coreboot

Build requirements for [coreboot](https://www.coreboot.org/).

I build it form my laptop according to the following guide: https://github.com/nenadstoisavljevic/t420-coreboot-guide

## Libreboot

Build requirements for [libreboot](https://libreboot.org).

Creating this file has been trickier since grub requires unifont to be installed in the ususal system directories and not within a nix store.
The issue can be solved by manually linking the font files into the grub source directory.

To build libreboot follow [this guide](https://libreboot.org/docs//build/)

## stm32

ST stm32 microcontrollers development.
