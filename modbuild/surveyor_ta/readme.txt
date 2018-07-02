This is a variant of the Surveyor mod, for use with Q3 Team Arena. (The original Surveyor mod is for use with base/vanilla Quake 3.) Homepage: http://neogeographica.com/site/pages/mods/surveyor.html

This mod is intended to help examine Q3 maps to see what dimensions are used for various structures and surfaces.

To do this, the mod allows you to shoot out a red and/or blue beacon that will attach to surfaces in the world. While both beacons are active, a line is drawn between them and the length of the line is shown on your HUD above the crosshair.

The mod also allows a method of beacon placement where you shoot out the red beacon and, when it lands, the blue beacon is immediately fired out from the red beacon's location, directly away from that surface. This is an easy way to measure the distance between facing surfaces such as the walls of a hallway or a ceiling & floor.

You can also remove or re-place either beacon.

A fired beacon will stop at the first surface it encounters. A couple of things to note:
* It will stop at a liquid surface if it is going into the liquid, but not if it is going out of the liquid.
* When a moving structure stops the beacon, the beacon will stay where it stopped. It won't follow the mover.


INSTALLATION

There are various kinds of mod installation that will work, depending on how your Quake 3 is set up, but the most basic approach that always works is to place this "surveyor_ta" folder within the same folder that holds your Quake 3 executable.


USE

Note that this variant of the Surveyor mod is meant for use with Team Arena, so you need to have Team Arena already installed.

You normally don't want to use the "Mods" menu in Quake 3 to activate this mod, as then you would not get the Team Arena content. Instead you can launch directly into the mod by using these command-line arguments for Quake 3: +set fs_basegame missionpack +set fs_game surveyor_ta

The mod adds the following commands that can be used in-game, either by typing them in the console or (preferably) by having them bound to keys:

* beacon: When used without arguments, the "beacon" command fires out the red beacon and automatically also fires the blue beacon away from it as described above. Or, "beacon 1" can be used to fire only the red beacon, and "beacon 2" to fire only the blue beacon. If you fire a beacon that already is active in the world, the existing beacon will be removed and replaced by the new one.

* beacondel: When used without arguments, the "beacondel" command removes all of the player's active beacons from the world. Or, "beacondel 1" can be used to remove only the red beacon, and "beacondel 2" to remove only the blue beacon. 

* survey_says: This command causes the player to say a message that includes the current distance between beacons. (If both beacons are not active, this command does nothing.) This is an easy way to get a specific distance to be logged into the Q3 console log. Or I suppose it could be used in multiplayer surveyor-ing.

This mod package includes a keys.cfg file that binds "beacon 1" and "beacon 2" to the left/right mouse buttons, "beacon" to the middle mouse button, and "beacondel" to backspace. You can do "exec keys.cfg" in the console to get these bindings if it sounds like that's what you would want.


TECHNICAL NOTES

This mod was compiled using the ioquake3 versions of the game code and compile tools. It has been tested with ioquake3. It should also work when used with the original Q3 Team Arena executable or with other Quake 3 sourceports, but I haven't tested that.

The mod also should work in multiplayer, if the server and all clients have the mod installed, but I haven't tested that either.

The source code can be found here, in the code/game and code/cgame folders:
https://github.com/neogeographica/ioq3/tree/surveyor

To see the changes made compared to the original game code, see:
https://github.com/neogeographica/ioq3/compare/master...surveyor