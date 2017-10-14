# StarTracks-MCRP
This is a Sci-Fi themed resource pack for Minecraft.

![logo](https://user-images.githubusercontent.com/1922739/31579693-789c62bc-b0f0-11e7-9e1b-f2bc415a4199.png)

# Description
This resource pack changes the story of Minecraft from that of a survivor in a pre-modern world to that of a space-human exploring a strange new planet, one whose peace is threatened by evil cyborgs and alien invaders. 

Will you free the bird-like people of this once-great world? Or conquer them in the name of humanity?

![screenshot-3](https://user-images.githubusercontent.com/1922739/31579733-4444429a-b0f1-11e7-97a9-39dc130a481f.png)

![screenshot-4](https://user-images.githubusercontent.com/1922739/31579735-47e75478-b0f1-11e7-95e8-fc3f4833656e.png)

![screenshot-5](https://user-images.githubusercontent.com/1922739/31579737-4c056fb8-b0f1-11e7-858d-776fdc241084.png)

# Installation
Simply download one of the release .zip files and put it in the *resourcepacks* folder inside your Minecraft profile folder (default location is *~/.minecraft* where ~ is either your home directory (unix-like computers) or *C:\Users\<username>\AppData\Roaming* (windows computers)).

## Warning!
You must set your **GUI Scale** to **normal** or **large** in the **Video Settings...** menu screen (text will not be legible if the GUI scale is set to *small* ).

## Spacesuit Physics
To enable spacesuit physics, copy the contents of the *world* folder extracted from *world.zip* into your saved game or server world folder. Then execute the command **/function startracks:init** (you may need to run the /reload command first). This will initialize spacesuit physics and set the game update loop to run the *startracks:spacesuit_update* function.

While active, spacesuit physics will allow any player wearing any helmet to breath underwater. However, if you are *not* wearing a **full** suit of armor in other dimensions, you will suffocate quickly.

To create a zone of breathable air (in creative mode), set the blocks at Y+128 (~128) to minecraft:barrier blocks (or other non-air block).

To disable spacesuit physics, execute the command **/gamerule gameLoopFunction - **.

## Building the resource pack
To compile this resource pack, you must have the following programs installed on your computer:
- Python 3+
- Inkscape
With these programs installed, you need only run the *build.py* python script to generate the resource pack .zip files, which will appear in the *distributables* folder. You may need to edit *build.py* to specify the specific location where Inkscape is installed on your computer.

# License and Redistribution
This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License (see http://creativecommons.org/licenses/by-sa/4.0/ ).

You may use this resource pack in your own Minecraft games and may include it in a publically available resource pack or server. You are free to redistribute this resource pack however you want. You have my permission to change this resource pack and use it in your own works, so long as my name (either "Cyanobacterium", "DrCyano", or "Chris Hall") is listed as a co-author and your derivative work is also licensed under a creative commons license.

# Credits
Credit for all sources of Creative Commons compatible 3rd party content.

## Sounds
From freesound.org:
- InspectorJ
- Ferdinger
- Theshuggie
- RicherlandTV
- TheHorribleJoke
- DinoDilopho
- Tazi
- Dobroide

## Art
- Llexandro
- Abra
- Vexels.com
