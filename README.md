# ErgoDox Keymaps
> My keymap configurations for ErgoDox

## Links
- [ORYX: ElgoDox EZ Configurator](https://configure.zsa.io/)
- [teensy loader cli](https://www.pjrc.com/teensy/loader_cli.html)

## Preparation
On Ubuntu, you may need to install "libusb-dev" to compile.
```
sudo apt-get install libusb-dev
```

To first execution, compile `teensy_loader_cli` by `make` command.
```
// move teensy directory
cd teensy
// compile
make
```

## Setup the keymap to ErgoDox
1. Execute make command
```
make setup
```

2. Then, select your keymap config file (select as the number)
```console
select the keymap config file:
1) keymap1.hex
2) keymap2.hex
3) keymap3.hex
```

3. Finally, accept USB terminal input; press the ErgoDox reset button or reset key.