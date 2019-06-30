# reason-remote-komplete-kontrol
Contains Propellerhead Reason 10 Remote codec and map files for Native Instruments Komplete Kontrol keyboards.

## Overview

This repository contains Reason 10 Remote files for adding:

* Komplete Kontrol MCU as a Control Surface in Reason 10 - for controlling the Reason 10 transport
* Komplete Kontrol S61 Mk2 as a Control Surface in Reason 10 - for keyboard input and default 2-way mapping between Reason 10 stock devices and the knobs/buttons on the Komplete Kontrol

## Which keyboards is this for?

This has only been tested on Windows 10 running Reason 10 and using a Komplete Kontrol S61 Mk2 keyboard. It will likely also work with the S49 Mk2 and S88 Mk2 keyboards. Support for the A-Series and M32 keyboards is completely untested however the MCU Remote map should work provided Native Instruments have implemented the functionality consistently across these keyboards.

## How do I use it?

The installation process involves copying the Remote map and codec files to the correct file system location and then manually adding a Control Surface via Reason's Preferences dialog.

For detailed installation instructions see:

* [Komplete Kontrol MCU](Docs/Komplete%20Kontrol%20MCU.md)
* [Komplete Kontrol S61 Mk2](Docs/Komplete%20Kontrol%20S61%20MK2.md)

## Contributing

Contributions are most welcome.  Start by creating an issue for discussion and once the direction is agreed on create a branch and submit a PR if you'd like to help out.

Note that due to the nature of MIDI control surface mapping many of the decisions about which hardware control should be mapped to which software control are arbitrary and opinionated.  There is no reason why these maps can't be changed if you think it could be done better!

## Disclaimer

This is an unofficial Remote mapping which has not been endorsed by Propellerhead or Native Instruments.

All product and company names are trademarks™ or registered® trademarks of their respective holders. Use of them does not imply any affiliation with or endorsement by them.