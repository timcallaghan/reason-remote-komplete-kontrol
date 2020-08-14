# Komplete Kontrol MCU - Installation Instructions

## Background

By default Propellerhead's Reason 10+ does not support transport control when a Native Instruments Komplete Kontrol mk2 keyboard is connected. This means that pressing the hardware button on the physical keyboard for things like Play/Rec/Stop/Loop doesn't change the corresponding state in Reason.

In June 2019 Native Instruments updated their S-Series Mk2, A-Series, and M32 keyboards to support basic MCU functionality via a firmware patch associated with Komplete Kontrol software release v2.1.3.  The included MCU functionality allows some of Reason's transport controls to be controlled from the hardware keyboard buttons.  Currently the MCU functionality is limited to sending MIDI signals for:

* PLAY
* REC
* STOP
* LOOP
* 4-Directional Push Encoder - Up/Down/Left/Right + Rotate deltas

This guide explains how to add Komplete Kontrol as a Control Surface in Reason so that the above hardware buttons change the corresponding state in Reason's transport.

## How to install on Windows

Before starting, ensure all instances of Reason are closed.

### Installing codec files

Reason Control Surface Remote _**codec**_ files for Native Instruments devices are located at

```
C:\ProgramData\Propellerhead Software\Remote\Codecs\Lua Codecs\Native Instruments
```

You need to copy the following files into the above folder (might require Administrator privileges)

* [Komplete Kontrol MCU.lua](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20MCU.lua)
* [Komplete Kontrol MCU.luacodec](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20MCU.luacodec)
* [Komplete Kontrol MCU.png](../Codecs/Lua%20Codecs/Native%20Instruments/Komplete%20Kontrol%20MCU.png)


### Installing mapping files

Reason Control Suface Remote _**mapping**_ files for Native Instruments devices are located at

```
C:\ProgramData\Propellerhead Software\Remote\Maps\Native Instruments
```

You need to copy the following files into the above folder (might require Administrator privileges)

* [Komplete Kontrol MCU.remotemap](../Maps/Native%20Instruments/Komplete%20Kontrol%20MCU.remotemap)

### Setup in Reason 10+

1. Start Reason
2. Go to `Edit->Preferences->Control Surfaces`
3. Click `Add manually`
4. For Manufacturer select `Native Instruments`
5. For Model select `Komplete Kontrol MCU`
6. Under Input select `Komplete Kontrol DAW - 1`
7. Under Output select `Komplete Kontrol DAW - 1`
8. Click `OK`
9. Ensure the Control Surface is added and has a green tick next to it
10. Close the Preferences dialog

## How to use

The PLAY/REC/STOP/LOOP buttons on the physical Komplete Kontrol hardware keyboard are now 2-way synced with Reason's transport controls. Clicking them on the hardware will cause the software to be updated and vice versa.

Use the 4-Directional Push Encoder on the Komplete Kontrol keyboard to do the following:

* Push Up - Switch to the previous sequencer track
* Push Down - Switch to the next sequencer track
* Push Right - Move the Song Position marker 1 bar forward in the sequencer
* Push Left - Move the Song Position marker 1 bar backward in the sequencer
* Rotate - Move the Song Position marker 1/16th note in the rotation direction
