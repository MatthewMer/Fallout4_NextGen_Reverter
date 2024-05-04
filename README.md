# Fallout4 Next Gen Reverter
Scripts for reverting the next gen update of Fallout 4 because all mods relying on Script Extender are broken (this is for the English version of the game, for other langiages go to the [page at nexusmods.com](https://www.nexusmods.com/fallout4/mods/81902))

## Usage ##
* ~~make sure you have a clean installation of Fallout 4 (except you know what you are doing)~~ The scripts will take care of content that breaks the game after downgrading. Your modded game should be fine afterwards and work as intended (except your mods modified existing game files in order to work).
* clone the repository to a local storage with enough free space, as you will essentially download the entiry game (~40GB without HD textures, ~90GB with HD textures)
* Run the following script first (double-click on it), enter your Steam credentials and enter 'y' if you want to download the HD textures, too. You can ignore the Windows warning when executing it, Windows never trusts downloaded scripts: 
```
1_fallout_4_download_pre_next_gen.cmd
```
NOTE: the script will prompt you to enter your Steam password in order to access the depots on the Steam servers ! If you prefer to do the installation manually there is a short description at [nexusmods.com]([https://www.nexusmods.com/fallout4/mods/81902](https://www.nexusmods.com/fallout4/mods/81902?tab=posts)))

(If you use steam 2FA you will be prompted to enter the code during execution)
* After executing the first script the old game files will be stored within the folder. You can keep the folder somewhere on your pc and downgrade the game with the second script as many times as you want
* Afterwards you need to install the files, just use the second script by right-clicking on it and running it as administrator:
```
2_fallout_4_install_pre_next_gen.cmd
```
* When finished all should be setup and updates should be disabled (`D:\SteamLibrary\steamapps\appmanifest_377160.acf` file attributes set to `Read-Only`)
