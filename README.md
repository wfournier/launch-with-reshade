# launch-with-reshade
Simple Powershell script that uses crosire's ReShade DLL injector and launches a game at the same time. Made with the idea of launching Steam games in mind.  

I made this script because I was having problem installing ReShade on a game using Unreal Mod Unlocker since both use the dxgi.dll file.  

This method allows ReShade to be injected as the game launches instead of modifying its files.  

# Pre-requisites
- Latest release of the executable [here](https://github.com/wfournier/launch-with-reshade/releases/latest). You can alternatively download the source script and use it as is from the terminal or compile it to an executable yourself.
- File archiver software (i.e. [WinRAR](https://www.win-rar.com/download.html?&L=0), [7-Zip](https://www.7-zip.org/download.html))
- Latest version of ReShade installation file (Download [here](https://reshade.me/#download))
- crosire's DLL injector for ReShade (Download [here](https://reshade.me/downloads/inject64.exe))

# Installation
1. Put all the downloaded files in the same folder.
2. Using your archiver software, open the ReShade installation file as an archive (For 7-Zip, <b>Right click file -> 7-Zip -> Open archive</b>)
3. Extract **ReShade64.dll** in the folder with all the other files.
4. If you don't already have shaders from another ReShade installation, you can download a small collection on [crosire's repo](https://github.com/crosire/reshade-shaders) and place them in your game installation folder. If you're missing shaders, I included the **reshade-shaders** folder on this repo which has all of them (either clone the repo or download as a zip and extract the folder). You might also need to specify the shaders and textures locations in the ReShade menu once in game.

# Usage with Steam games
1. Open your game's properties window
2. In **Launch Options**, enter ``"<path_to_LaunchWithReShade>" "<path_to_game_executable>" %command%``  
   
   For example:  
   ``"C:\launch-with-reshade\LaunchWithReShade.exe" "C:\Program Files (x86)\Steam\steamapps\common\Lies of P\LiesofP\Binaries\Win64\LOP-Win64-Shipping.exe" %command%``
3. When launching the game through Steam, it instead starts **LaunchWithReShade.exe** and passes the game's executable as an argument.
4. A terminal window should appear, wait for the game to start, inject ReShade and then close itself.

**Note**: Putting the **LaunchWithReShade.exe** and other files in the same folder as the game's executable makes it... not work... sometimes (unsure why). So be certain they are in their own folder somewhere else.