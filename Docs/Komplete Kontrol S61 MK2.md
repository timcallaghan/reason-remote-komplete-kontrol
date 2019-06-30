# Komplete Kontrol S61 Mk2 - Installation Instructions

## Background

By default Propellerhead's Reason 10 only supports basic MIDI functionality for Native Instruments Komplete Kontrol keyboards. You can play notes, use the pitch/mod wheel and other standard MIDI functionality.

If you want to control device parameters using the knobs/buttons on the keyboard you have to setup custom Remote Override Mappings. However even when doing this you essentially lock a specific hardware control to a device control which severely limits the number of device parameters you can control from hardware.

The Komplete Kontrol S61 Mk2 keyboard has 8 buttons and 8 knobs positioned above and below the two display screens respectively. It is possible to extend this model by defining custom MIDI templates with up to 4 pages of controls, however the factory default setup is a MIDI template with 8 buttons and 2 pages of knobs for a total of 16 assignable knobs. To make this Remote mapping useful out-of-the-box it is assumed that the keyboard is using the default factory MIDI template.

Since many of the Reason 10 devices contain dozens of buttons/faders/knobs only a hand-picked selection of the software device control parameters have been mapped.  The aim was to map the most commonly used functions (e.g. filter frequency and resonsnce).

All mapping is 2-way which means that switching between devices in the rack causes the hardware keyboard buttons and knobs to update their values.  This is particulary useful as it avoids jumps in control values for the buttons/knobs when switching between devices.

## How to install on Windows

Before starting, ensure all instances of Reason 10 are closed.

### Installing codec files

Reason Control Surface Remote _**codec**_ files for Native Instruments devices are located at

```
C:\ProgramData\Propellerhead Software\Remote\Codecs\Lua Codecs\Native Instruments
```

You need to copy the following files into the above folder (might require Administrator privileges)

* [Komplete Kontrol S61 MK2.lua](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.lua)
* [Komplete Kontrol S61 MK2.luacodec](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.luacodec)
* [Komplete Kontrol S61 MK2.png](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.png)


### Installing mapping files

Reason Control Suface Remote _**mapping**_ files for Native Instruments devices are located at

```
C:\ProgramData\Propellerhead Software\Remote\Maps\Native Instruments
```

You need to copy the following files into the above folder (might require Administrator privileges)

* [Komplete Kontrol S61 MK2.remotemap](../Maps/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.remotemap)

### Setup in Reason 10

1. Start Reason 10
2. Go to `Edit->Preferences->Control Surfaces`
3. Click `Add manually`
4. For Manufacturer select `Native Instruments`
5. For Model select `Komplete Kontrol S61 MK2`
6. Under Input select `KOMPLETE KONTROL - 1`
7. Under Output select `KOMPLETE KONTROL - 1`
8. Click `OK`
9. Ensure the Control Surface is added and has a green tick next to it
10. Close the Preferences dialog

## How to use

The basic MIDI keyboard functions are mapped so the following work:

* Keys with velocity
* Pitch bend
* Mod wheel
* Damper Pedal (if attached)
* Aftertouch (Channel Pressue)

The Touch Strip is also exposed via the standard MIDI Expression message. For example, in Europa you can set up the modulation matrix to map `Performance->Expression` to something (e.g. `Amplifier->Gain`) and then slide your finger on the Touch Strip.

All of the Reason 10 stock devices have been mapped. Since the mapping is 2-way, an easy way to discover the mapping is to tweak a parameter on the device and then observe the hardware keyboard displays to see if anything changes.

If a particular control is not mapped a viable workaround is to place the device in a Combinator.  The four buttons and four knobs of the Combinator have been mapped to the first four buttons and knobs on the keyboard. You can then use the programmer in the Combinator to hook up the Combinator buttons/knobs to the specific device parameters you wish to control.

Note that due to the nature of MIDI control surface mapping many of the decisions about which hardware control should be mapped to which software control are arbitrary and opinionated.  There is no reason why these maps can't be changed if you think it could be done better. Feel free to suggest improvements!
