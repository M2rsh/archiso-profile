# archiso-profile
Me be bored as hell 👍

## Usage
Run ```make build``` to build the iso wait and the iso will appear in `build` directory

Run ```make test``` to test the previously built iso

## Requirements

for building [Archiso](https://wiki.archlinux.org/title/Archiso)

for testing [qemu-desktop](https://archlinux.org/packages/?name=qemu-desktop) and [edk2-ovmf](https://archlinux.org/packages/?name=edk2-ovmf)

install command for both
```bash
sudo pacman -S archiso qemu-desktop edk2-ovmf
```