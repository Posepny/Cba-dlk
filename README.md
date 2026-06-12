The champion of Bhaal
A mod developed on The Copper Coronet for Baldur's Gate II: Baldur's Gate Trilogy
The Copper Coronet


Author: Cocrane

Version : 1.1.1

Language: French

Platforms: Windows and Linux

Mod website • Mod forum • Download • GitHub

Overview • Compatibility • Installation • Components • Screenshots • Troubleshooting • Credits and Acknowledgments • Version History
Presentation

Sarevok is dead, you have defeated him!

The dukes make you the first Protector of Baldur, "he who serves and protects the people."

Many adventures await you; let me tell you about one of them!



"After a few steps, the stone slab slams shut behind you. Your attempts are in vain; the door is firmly sealed.

The invitation of this place is clear and undeniable; you have no choice but to move forward.

You will discover that a dark story unfolded in this underground dungeon. But will you be able to piece together the puzzle and profit from it?

Dare to take on the challenge and advance into this gloomy corridor!"

Learn a little more  

The adventure begins at the Helm and Cloak Inn where you can recruit loyal companions from BG1. Exploring a dungeon surrounded by mysteries, you will be searching for a way out.
This mod is part of the upcoming "Baldur's Protector" mod, a sequel to BG1 following Sarevok's death. Until it is completed, it will be impossible to leave the inn.
A 16-card dungeon for approximately 10 hours of gameplay.
Difficulty: approximately level 10.
Option to play with your save file or start a new game.
Recruitable BG1 NPCs + 3 new NPCs


Bhaal's Champion > Presentation • Top of page
Compatibility

This mod was designed using the Baldur's Gate Trilogy (BGT) environment. It has not been tested on other environments.

Bhaal's Champion is a WeiDU mod and should therefore be compatible with any WeiDU mod running under BGT.

If you encounter any bugs, please contact Cocrane or post in the mod's forum .

Although not required to run Bhaal's Champion properly, it is still helpful to have the latest version of the BG2 Fixpack installed .


Bhaal's Champion > Compatibility • Top of page
Installation

Warning
If an older version of this mod is already installed, you must uninstall it first. To do this, run  setup_CDB.exe  (or .command if you are using macOS) and uninstall all previously installed components. Once the uninstallation is complete, delete the CDB directory and the setup_CDB.exe file (Windows version) before extracting the new version of the mod.

When installing or uninstalling, do not close the DOS window by clicking the X button ! Instead, press Enter when prompted by the command prompt.

As a precaution, disable any antivirus software or any other memory-based programs before installing this or any other mod. Some (especially Avast and Norton!) have a nasty habit of flagging mod executables as false positives, causing the installation process to fail.



⚠️ Warning: Installation procedure
Enhanced Editions are games that the developer continues to develop, notably by adding extra capabilities for creating mods and by adding new content. Remember that each update patch will erase any mods you have installed! This mod will be no exception.


There are two options to consider during installation:

When does the mod start?
1: Either upon Sarevok's death.
2: Or immediately (from a new game or a save of your choice).

Do you want to play with the creature animations provided by Infinity Animation?
Yes: Infinity Animations must be installed. The animations used by the mod will be processed during installation.
No: You will play with the default animations.


Windows
Bhaal's champion for Windows is delivered and installed with WeiDU and is distributed as an archive.

You need to extract the files from the archive to your game directory ( the folder containing the CHITIN.KEY file ) using 7-Zip or WinRAR . Once the archive is extracted, you should find the CDB directory and the SETUP_CDB.exe file in your game directory. To install the mod, simply double-click on  SETUP_CDB.exe  and follow the on-screen instructions.

You can launch  SETUP_CDB.exe  in your game directory to reinstall, uninstall, or change components.



Linux
Bhaal's champion for Linux is distributed in the same archive, without the WeiDU installer .

Extract the mod's contents into the directory of the game you want to mod.

Download the latest version of WeiDU for Linux from WeiDU.org and copy weidu, weinstall, and tolower to /usr/local/bin (create it if it doesn't exist). Then open a terminal and navigate ( cd ) to your game's installation directory, run  /usr/local/bin/tolower  , and answer "Y" to both prompts. You can skip running the second option (Linux.ini) if you've already run it once in the same folder. To save time, the archive is already converted to lowercase, so you also don't need to run the first option (converting filenames to lowercase) if you've only extracted this mod since you last converted the filenames to lowercase. If you're unsure, it's best to run tolower and accept both prompts.

Type the command  `export PATH=$PATH:/usr/local/bin`  , then run  `weinstall SETUP_CDB`  from your game folder to install the mod. Next, run  `wine bgmain.exe`  (or  `wine baldur.exe`  for EE versions) and start playing.



Note for performing a complete uninstallation
In addition to the methods detailed above for removing components, it is possible to completely uninstall the mod by typing  SETUP_CDB --uninstall  in a command line, which will remove all components without having to ingest all the messages.


Bhaal's Champion > Installation • Top of page
Components

The installation program includes only one component: the main component.


Bhaal's Champion > Components • Top of page
Screenshots


Recruitment at the inn.



Exploration in progress.

Bhaal's Champion > Screenshots • Top of page
Troubleshooting

If you encounter a bug, please report it to the author in the Bhaal's Champion forum . Additionally, Bhaal's Champion is available on GitHub , where the community can submit fixes and modifications.


Here are some common troubleshooting tips if you're having trouble running the game, with or without this mod (or other mods). Errors are often caused by the game engine itself, how you install the game and mods, or even how you play. Before trying anything else, it's recommended to delete all files from the /cache, /temp, and /tempsave subdirectories in the game directory to see if that resolves the issue.

Symptom: The game freezes or returns to the Windows desktop.

When this happens, the game sometimes displays an assertion error in a pop-up window, but this isn't always the case. To see the full error message, open the baldur.ini file (located in the game directory) with a text editor (such as Notepad). If you are using Windows Vista or a later operating system and are unable to edit this file or save your changes, see this topic for more information. You can also consult this FAQ in French.

In the [Program Options] section of this file, type `Logging On=1` (unless this instruction is already present). It's also a good idea to verify that the `Debug Mode=1` instruction is present, which enables the CLUA Console for debugging and testing. Save and close the file. Launch the game again and try to reproduce the error. Then, locate the Baldur.err file in the game directory and open it with a text editor to analyze its contents.

Symptom:

ERROR: error copying [infinityanimations/content/somefile.bam]
ERROR: [SOMEFILE.CRE] -> [override/SOMEFILE.CRE] Patching failed (COPY)
Stopping installation because of error.

(with no other error message)

These kinds of unhelpful messages might indicate that you're installing the mod on a hard drive with a slow data transfer rate, or that an antivirus program is running during installation (which can also affect data transfer). Try installing the mod on an internal hard drive, making sure that your antivirus protection is disabled during the installation. If you're unsure, disconnect from the internet during the installation (either by unplugging your cable or disconnecting your Wi-Fi adapter) and close all programs running in memory. To get a list of these programs, go to Start > Run, and type msconfig where it says "Open:". Then click OK. When the system configuration utility appears, click the Start button. The only programs that really need to be loaded into memory at startup are those related to your graphics chip (typically ATI or NVIDIA). Uncheck everything else, restart your computer, and try installing the mod again. There is abundant literature on problems related to installing mods when Avast antivirus is enabled, so make sure that all Avast components are completely disabled.

Other problems

If you have installed more than one "megamod", please refer to the Megamod FAQ for additional troubleshooting information.

If none of this solves your problem, or if your problem is related to a specific mod, please report it in the mod's forum . Include the contents of the WeiDU .log file in your message (placed between [spoiler][/spoiler] tags , please!), or attach it as a file to your message if it's too large.


Bhaal's Champion > Troubleshooting • Top of page
Credits and acknowledgments

Author: Cocrane
Special thanks:
Thanks to the Copper Crown team for hosting this mod.
To the creators of the Baldur's Gate series: Bioware and Black Isle Studios .
To the members of the Copper Crown for their hospitality and help with this project. Special thanks to the people below: 🙂
FreddyGwendo (aka Gwendolyne)
Isaiah
The phone
God
Exterminator
Faust
Mornagest

Software and tools used to create this mod:
WeiDU by Wes Weimer, the bigg et Wisp.
Near Infinity by Jon Olav Hauglid, FredSRichardson and Argent77.
DLTCEP of Avenger.
IESDP maintained by igi and lynx.
BAMWorkshop 2 de Andrew Bridges.
Near infinity de Spellold Studios
Paint.net
BG_TCD (Baldur's Gate Text Conversion Dialogue) - link to be provided by Cocrane
Notepad++ by the Notepad++ team, Don Ho; and the spell-checking plug-in.

Copyright information
Bhaal's Champion is not developed, supported, or endorsed by BioWare™ or Interplay/Black Isle, Overhaul, Beamdog, or Wizards of the Coast. It was developed by Cocrane and is based on the Baldur's Gate II game and its expansion.

All content in the mod belongs to ©Cocrane.

Baldur's Gate II: Shadows of Amn and Baldur's Gate II: Throne of Bhaal are owned by © TSR, Inc. The Infinity Engine is owned by © BioWare Corp. All other trademarks and copyrights are the property of their respective owners.


This mod was created to be freely enjoyed by all Baldur's Gate II players. However, it must not be sold, published, compiled, or redistributed in any form without the author's consent.

Please note that any sharing or hosting of this mod is prohibited without the author's permission.


If there are any copyright issues or if this statement needs revision, please contact me and advise me on how to proceed. Specifically, if you find any artwork in this mod that may infringe on copyright, please let me know as soon as possible and I will remove the infringing content immediately.


The Infinity Engine modding community has been very active for over fifteen years now, producing thousands of hours of unpaid work by fans of the game. Modders strive to release the best of their work, and players benefit from the highest-performing and best-maintained mods, provided we all work together towards the same goal.

But this harmony can unfortunately be disrupted, mainly by two behaviors. The first is claiming someone else's work as their own. The second is hosting and redistributing a mod without the author's permission.

Be kind enough to your fellow gamers and modders. Don't do it.


Bhaal's Champion > Credits and Acknowledgments • Top of page
Version history

Version 1.1.1 - 15/06/2020

Initial exit

Bhaal's Champion > Version History • Top of page
