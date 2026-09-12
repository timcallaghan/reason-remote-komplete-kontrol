# Komplete Kontrol S61 Mk2 - Installation Instructions

## Background

By default Reason Studios' Reason only supports basic MIDI functionality for Native Instruments Komplete Kontrol keyboards. You can play notes, use the pitch/mod wheel and other standard MIDI functionality.

If you want to control device parameters using the knobs/buttons on the keyboard you have to setup custom Remote Override Mappings. However even when doing this you essentially lock a specific hardware control to a device control which severely limits the number of device parameters you can control from hardware.

The Komplete Kontrol S61 Mk2 keyboard has 8 buttons and 8 knobs positioned above and below the two display screens respectively. It is possible to extend this model by defining custom MIDI templates with up to 4 pages of controls, however the factory default setup is a MIDI template with 8 buttons and 2 pages of knobs for a total of 16 assignable knobs. To make this Remote mapping useful out-of-the-box it is assumed that the keyboard is using the default factory MIDI template.

Since many of the Reason devices contain dozens of buttons/faders/knobs only a hand-picked selection of the software device control parameters have been mapped.  The aim was to map the most commonly used functions (e.g. filter frequency and resonance).

All mapping is 2-way which means that switching between devices in the rack causes the hardware keyboard buttons and knobs to update their values.  This is particulary useful as it avoids jumps in control values for the buttons/knobs when switching between devices.

## How to install on Windows

Before starting, ensure:

- All instances of Reason are closed
- [Download the latest files](https://github.com/timcallaghan/reason-remote-komplete-kontrol/archive/refs/heads/master.zip) - this will download this entire respository as a zip file, which you then need to extract locally

For Windows, the following paths are relevant:

- Codec files path `C:\ProgramData\Propellerhead Software\Remote\Codecs\Lua Codecs\Native Instruments`
- Map files path `C:\ProgramData\Propellerhead Software\Remote\Maps\Native Instruments`

For MacOS, the following paths are relevant:

- Codec files path `~/Library/Application Support/Propellerhead Software/Remote/Codecs/Lua Codecs/Native Instruments`
- Map files path `~/Library/Application Support/Propellerhead Software/Remote/Maps/Native Instruments`

Ensure the above folders exist (if they don't, create then _exactly_ as named above).

### Installing codec files

You need to copy the following files into the **codec** files path (might require Administrator privileges)

* [Komplete Kontrol S61 MK2.lua](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.lua)
* [Komplete Kontrol S61 MK2.luacodec](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.luacodec)
* [Komplete Kontrol S61 MK2.png](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.png)


### Installing mapping files

You need to copy the following files into the **map** files path (might require Administrator privileges)

* [Komplete Kontrol S61 MK2.remotemap](../Maps/Native%20Instruments/Komplete%20Kontrol%20S61%20MK2.remotemap)

### Setup in Reason

In the following you need to select MIDI input/output ports. These are named differently depending on the operating system and driver

- On Windows the port is called `KOMPLETE KONTROL - 1`
- On MacOS the port is called `KOMPLETE KONTROL S61 MK2 Port 1`

1. Start Reason
2. Go to `Edit->Preferences->Control Surfaces`
3. Click `Add manually`
4. For Manufacturer select `Native Instruments`
5. For Model select `Komplete Kontrol S61 MK2`
6. Under Input select either `KOMPLETE KONTROL - 1` (Windows) or `KOMPLETE KONTROL S61 MK2 Port 1` (MacOS)
7. Under Output select either `KOMPLETE KONTROL - 1` (Windows) or `KOMPLETE KONTROL S61 MK2 Port 1` (MacOS)
8. Click `OK`
9. Ensure the Control Surface is added and has a green tick next to it (enabled) - also make it the master keyboard if you want this behaviour
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

Note that due to the nature of MIDI control surface mapping many of the decisions about which hardware control should be mapped to which software control are arbitrary and opinionated.  There is no reason why these maps can't be changed if you think it could be done better. Feel free to suggest improvements!

## Tips

### Custom maps

If a particular control is not mapped a viable workaround is to place the device in a Combinator.  The four buttons and four knobs of the Combinator have been mapped to the first four buttons and knobs on the S61 Mk2 keyboard. You can then use the programmer in the Combinator to hook up the Combinator buttons/knobs to the specific device parameters you wish to control.

### Half-rack Effects
All of the half-rack effects don't have master keyboard input focus by default. This means you wont be able to control their paramters by simply clicking on the effect in the rack.  However you can right-click a half-rack effect and select `Create Track for ...`. Then you can set master keyboard focus to the effect's sequencer track and contol it from hardware buttons/knobs.

### Controlling the Mixer channel levels

If you want to use the knobs on the S61 Mk2 to simultaneously control mix channel levels you can set master keyboard focus to the Master Section in the rack.  Once you do this the knobs will control the fader levels for 8 channels at a time in the mixer.  Use buttons 1 and 2 on the S61 Mk2 to move backwards/forwards through the mixer channels 8 at a time.
