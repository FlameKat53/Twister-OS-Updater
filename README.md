# Twister OS Patcher
An updater for Twister OS that automatically downloads, unzips, and runs the latest patch for Twister OS. It is fine if you run the patcher more than once as it auto-detects your version. You have to run the patcher when you can reboot your computer as it is required for patching.<br>


#### Go support Twister OS!</br>
### <a href="https://twisteros.com/">>Twister OS<</a>

# Install/Update
`wget https://raw.githubusercontent.com/FlameKat53/Twister-OS-Patcher/master/install.sh && chmod +x ./install.sh && ./install.sh`<br>
If you notice the repo has been changed, run `bash ~/patcher/upgradepatcher.sh` to update your current version of the patcher.

# Uninstall
`bash ~/patcher/uninstall.sh`

# Usage
[![18-08-2020-08-02-21-REC.png](https://i.postimg.cc/cHq94jWb/18-08-2020-08-02-21-REC.png)](https://postimg.cc/DWgdxx8r)<br>
Go in the applications menu and search for Twister OS Patcher in the system section. Click on it and a terminal window will open. If a window pops-up saying the file is untrusted, just click 'Mark Executable'. Press enter to continue and the program will check to see which version you are on and if you are on the latest version, it'll tell you and you can close it with [Enter]. If you are on an old patch, it'll confirm your current version which you can check by typing `twistver`. If it is correct press [Enter] and it will automatically run the patch and reboot for you.

# Automatically Patch
We suggest doing the steps below 
Run the following command to run the script once every week<br>
`(crontab -l ; echo "0 10 * * 1 ~/patcher/patch.sh")| crontab -`<br>

# Icon
[![twister-update-blue.png](https://i.postimg.cc/tJy5MqsN/twister-update-blue.png)](https://postimg.cc/WFWgDP6d)<br>
If the default icon for the application is a little too "dark" for you, then right-click on the application and select 'Edit application'. Then click on the icon and choose `twister-update-blue.png` or `twister-update.png` as seen in the images below. The icon will become the one shown above.
[![18-08-2020-12-08-17-REC.png](https://i.postimg.cc/mkVFbMwh/18-08-2020-12-08-17-REC.png)](https://postimg.cc/8fJC47xV)<br>
[![18-08-2020-12-08-49-REC.png](https://i.postimg.cc/MZYBb2Sx/18-08-2020-12-08-49-REC.png)](https://postimg.cc/pypyRSr1)

# Support
If you have any problems, make an issue in this repository or go to the Pi Labs discord to connect with us at https://discord.gg/ttxhYrX

# Demonstration
This patcher has been featured in the following places:


# Credits
FlameKat53: patch.sh and patcher.desktop files<br>
MobileGamesMotionYT#7199 on Discord: The idea of an automatic patcher, install.sh and README<br>
Grayduck: Icons and checkversion.sh script<br>
Aquarius on Discord: Landscape title art<br>
Phoenixbyrd on Disocrd: Uploading files for us to the website<br>

# Changes
Dev phase
- [x] Automatically update in order from current release to latest release<br>
- [x] Uninstall script<br>
Alpha/Beta<br>
- [ ] Make sure it works<br>
Official release<br>
- [ ] Get program installed by default onto Twister OS
