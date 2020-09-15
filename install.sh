#!/bin/bash
echo 'Installing Twister OS Patcher by FlameKat53, Jack47, and MobileGamesMotionYT...'

problem=$(dpkg -s python3-tk|grep installed)
path=$(pwd)
echo $path
echo Checking for tkinter: $problem
if [ "" == "$problem" ]; then
	sudo apt-get install python3-tk
fi
sudo apt-get install python3-pil python3-pil.imagetk python3-wget python3-schedule
#Get archive from github and unzip it
wget https://github.com/FlameKat53/Twister-OS-Patcher/archive/py.zip
unzip py.zip
rm py.zip
mv Twister-OS-Patcher-py/ /home/pi/patcher/
cd /home/pi/patcher/
python3 c_desktop.py $USER
cd /home/pi/patcher/
sudo chmod +x *.sh
cd /home/pi/patcher/src/
sudo chmod +x *.sh
crontab -l | { cat; echo "* 12 * * * sudo -H -u pi bash -c 'python3 /home/pi/patcher/src/checkforupdates.py'"; } | crontab -

#Adds commands
sudo rm -f /usr/local/bin/twistpatch

if [ ! -f "/usr/local/bin/twistpatch" ]; then
    sudo ln -s '/home/pi/patcher/src/updatenow.sh' /usr/local/bin/twistpatch
    sudo chmod +x /usr/local/bin/twistpatch
fi

sudo rm -f /usr/local/bin/twistpatch-uninstall

if [ ! -f "/usr/local/bin/twistpatch-uninstall" ]; then
    sudo ln -s '/home/pi/patcher/uninstall.sh' /usr/local/bin/twistpatch-uninstall
    sudo chmod +x /usr/local/bin/twistpatch-uninstall
fi
