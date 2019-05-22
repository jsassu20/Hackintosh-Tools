# AppleALC ALC3232 Modification

AppleALC.kext (Lilu Plugin for patching AppleHDA.kext for system sound functionality) ALC292 converted to ALC3232 (Modified by Jsassu20 | James Sassu)

* ALC292 has been modified to ALC3232 specifically for the Lenovo ThinkPad T450 (macOS Mojave) ***

* This kext is specifically configured to use as a system audio configuration for patching ApplHDA on the fly. Its been modified to allow for                functionality of the microphone and the AUX/Line In config. The ALC293 configuration has been modded to actually use ALC3232. If you update this kext      youll lose the proper configuration which I've modded. 

* layout-id - 28 (1C000000 in HEX format)

Clover Configurator: /Devices/Properties/PciRoot(0x0)/Pci(0x1b,0x0)
   
* layout-id (DATA) - 1C000000 | or (NUMBER) - 28 |
   
* hda-gfx (STRING) - onboard-1
   
* device_type (STRING) - Audio Device
   
* device-id (DATA) - 02920000
   
* vendor-id (DATA) - EC100000
   
* codec-id (DATA) - 0292EC10
   
* PinConfigurations (DATA) - (leave blank)
   
* AAPL,slot-name (STRING) - Built In

* model (STRING) - Realtek ALC3232 High Definition Audio (Intel Broadwell Wildcat Point-LP HD Audio Controller) 
	  
* MAKE SURE YOU INCLUDE THE ALC3.aml IN YOUR ACPI/patched FOLDER (or ALC3.dsl IN YOUR HOTPATCHED CONFIGURATION)