# unitree_sdk2
fork of Unitree robot sdk version 2.

The original README can be found at old_README.md.

### Prebuild environment
Run using a Nix Flake pinned to 24.11. 
Currently, only x86 is supported.

### Build examples

To build the examples inside this repository:

```bash
mkdir build
build_sdk
```
> build_sdk currently runs make -j8

### Installation

```bash
mkdir build
install_sdk
```
> installation directory is at build/bin


