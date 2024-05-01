# Fallout4 Next Gen Reverter
Scripts for reverting the next gen update of Fallout 4 because all mods relying on Script Extender are broken

## Usage ##
* make sure you have a clean installation of Fallout 4 (except you know what you are doing)
* clone the repository to a storage with enough free space, as you will essentially download the entiry game (~40GB without HD textures, ~90GB with HD textures)
* open a command prompt as administrator (depending on where your Fallout 4 installation is located)
* go to the directory of the downloaded repository, e.g.
```
cd /d C:\path\to\repo
```
* execute the first script to download the depots. You need to enter your steam credentials for steamcmd to be able to access them and append `hd` if you want to download the HD textures. The download will take some time.
HD:
```
1_fallout_4_download_pre_next_gen.cmd username password hd
```
No HD:
```
1_fallout_4_download_pre_next_gen.cmd username password
```
(If you use steam 2FA you will be prompted to enter the code during execution)
* Afterwards you need to install the files, just use the following command and replace the path with your Fallout 4 installation directory:
```
2_fallout_4_install_pre_next_gen.cmd "D:\SteamLibrary\steamapps\common\Fallout 4"
```
* When finished all should be setup and updates should be disabled (`D:\SteamLibrary\steamapps\appmanifest_377160.acf` file attributes set to `Read-Only`)