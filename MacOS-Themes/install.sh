#!/bin/bash

if [[ $EUID -eq 0 ]]; then
  echo "This script should NOT be run as root" 1>&2
  exit 1
fi

# Save Working Directory
WORKDIR="$(pwd)"

##Update
#echo "Updating ..."
#sudo apt-get -y update
#
#echo "Installing macOS theme ..."
#
##-------------------------------------------
#
## Install Curl
#echo "Installing Curl ..."
#sudo apt-get install -y curl
#
##-------------------------------------------
#
## Install Git
#echo "Installing Git ..."
#sudo apt-get install -y git
#
##-------------------------------------------
#
## Install Gnome Tweak Tool
#echo "Installing Gnome Tweak Tool ..."
#sudo apt-get install -y gnome-tweak-tool
#
##-------------------------------------------
#
## Install Shell Extensions
#echo "Installing Shell Extensions ..."
#sudo apt-get install -y gnome-shell-extensions
#
##-------------------------------------------

# Install Plank Dock
echo "Installing Plank Dock ..."
sudo apt-get install -y plank

# Launch Plank Dock on Startup
ln -s /usr/share/applications/plank.desktop $HOME/.config/autostart/plank.desktop

# Install Plank Dock themes
echo 'Installing MacOS Big Sur Plank Dock Themes ...'
sudo mkdir -p /usr/share/plank/themes/macOS-BigSur/
sudo cp -v $WORKDIR/BigSur-Dock/dock.theme /usr/share/plank/themes/macOS-BigSur/

##-------------------------------------------
#
## Install imagemagick
#echo "Installing ImageMagick ..."
#sudo apt-get install imagemagick
#
##-------------------------------------------
#
## Install icnsutils
#echo "Installing icnsutils"
#sudo apt-get install icnsutils
#
##-------------------------------------------
## Install Requirements and Dependencies
#echo 'Installing Requirements and Dependencies ...'
#sudo apt-get install -y gtk2-engines-murrine
#sudo apt-get install -y gtk2-engines-pixbuf
#sudo apt-get install -y sassc
#sudo apt-get install -y optipng
#sudo apt-get install -y inkscape
#sudo apt-get install -y libglib2.0-dev-bin
#
##-------------------------------------------
#
## Install GTK themes
#echo 'Installing MacOS Big Sur GTK Themes ...'
#git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
#cd $WORKDIR/WhiteSur-gtk-theme
#sudo ./install.sh --dest '/usr/share/themes/' --opacity 'standard'
#sudo ./install.sh --dest '/usr/share/themes/' --opacity 'standard' --nautilus-use-colors
#sudo ./install.sh --gdm --color 'light'
#cd $WORKDIR
#
## Remove WhiteSur-gtk-theme folder
#rm -rf WhiteSur-gtk-theme
#
##-------------------------------------------
#
## Install Icon themes
#echo 'Installing MacOS Big Sur Icon Themes ...'
#git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
#cd $WORKDIR/WhiteSur-icon-theme
#sudo ./install.sh -d '/usr/share/icons/'
#cd $WORKDIR
#
## Remove WhiteSur-icon-theme folder
#rm -rf WhiteSur-icon-theme
#
##-------------------------------------------
#
## Install Firefox themes
#echo 'Installing MacOS Big Sur Firefox Themes ...'
#mv WhiteSur-gtk-theme/src/other/firefox/chrome $HOME/.mozilla/firefox/*.default-release
#
##-------------------------------------------
#
## Install Albert with MacOS Big Sur Spotlight theme
#echo 'Installing MacOS Big Sur Albert Spotlight ...'
#curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
#sudo apt-get -y update
#sudo apt-get install -y albert
#
##Load Albert settings
#echo Loading Albert settings...
#sudo cp -v ../MacOS-Themes/BigSur-Spotlight/BigSur_White.qss /usr/share/albert/org.albert.frontend.widgetboxmodel/themes/
#cp -v ../MacOS-Themes/BigSur-Spotlight/albert.conf ~/.config/albert/
#
## Launch Albert on Startup
#ln -s /usr/share/applications/albert.desktop $HOME/.config/autostart/albert.desktop
#
##-------------------------------------------
#
## Config blank screen and locking mechanism
#gsettings set org.gnome.desktop.session idle-delay $((5*60))
#gsettings set org.gnome.desktop.screensaver lock-enabled true
#gsettings set org.gnome.desktop.screensaver lock-delay 2
#
##-------------------------------------------
#
## Config lid closing to lock
#
#sudo sed -i '/#HandleLidSwitch=/s/suspend/lock/' /etc/systemd/logind.conf
#sudo sed -i '/HandleLidSwitch=/s/^#//g' /etc/systemd/logind.conf
#
##-------------------------------------------
#
## Disable sleep, suspend, hibernate and hybird features
#sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
#
##-------------------------------------------
#
## Install Wallpaper
#echo 'Downloading MacOS BigSur Wallpaper ...'
#(
# mkdir -p $HOME/Pictures/macOS-BigSur-Wallpaper && cd "$_"
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Appearance.png --output 'BigSur-Color-Light.jpg'
# echo 'Download complete: Wallpaper BigSur-Color-Light.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Peak-2-dragged.jpg --output 'BigSur-Peak.jpg'
# echo 'Download complete: Wallpaper BigSur-Peak.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Valley-2-dragged.jpg --output 'BigSur-Valley.jpg'
# echo 'Download complete: Wallpaper BigSur-Valley.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Dome-2-dragged.jpg --output 'BigSur-Dome.jpg'
# echo 'Download complete: Wallpaper BigSur-Dome.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Tree-2-dragged.jpg --output 'BigSur-Tree.jpg'
# echo 'Download complete: Wallpaper BigSur-Tree.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Beach-7-dragged.jpg --output 'BigSur-Beach.jpg'
# echo 'Download complete: Wallpaper BigSur-Beach.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Cliffs-6-dragged.jpg --output 'BigSur-Cliffs.jpg'
# echo 'Download complete: Wallpaper BigSur-Cliffs.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Desert-6-dragged.jpg --output 'BigSur-Desert.jpg'
# echo 'Download complete: Wallpaper BigSur-Desert.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Lake-7-dragged.jpg --output 'BigSur-Lake.jpg'
# echo 'Download complete: Wallpaper BigSur-Lake.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Iridescence-Dark.png --output 'BigSur-Iridescence-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Iridescence.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Road.png --output 'BigSur-Road.jpg'
# echo 'Download complete: Wallpaper BigSur-Road.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1652.Noodles_Blue_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Blue-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Noodles-Blue-Dark.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1612.Noodles_Green_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Green-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Noodles-Green-Dark.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1622.Noodles_Pink_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Pink-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Noodles-Pink-Dark.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1632.Noodles_Silver_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Silver-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Noodles-Silver-Dark.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1642.Noodles_Gray_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Gray-Dark.jpg'
# echo 'Download complete: Wallpaper BigSur-Noodles-Gray-Dark.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_1NE45_Blue.jpg --output 'BigSur-Safari-Blue.jpg'
# echo 'Download complete: Wallpaper BigSur-Safari-Blue.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_2NE45_Pink.jpg --output 'BigSur-Safari-Pink.jpg'
# echo 'Download complete: Wallpaper BigSur-Safari-Pink.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_3NE45_Orange.jpg --output 'BigSur-Safari-Orange.jpg'
# echo 'Download complete: Wallpaper BigSur-Safari-Orange.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Grasses.png --output 'BigSur-Night-Grasses.jpg'
# echo 'Download complete: Wallpaper BigSur-Night-Grasses.jpg'
# echo '-------------------------------------------------------------------------------'
# curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Succulents.png --output 'BigSur-Night-Succulents.jpg'
# echo 'Download complete: Wallpaper BigSur-Night-Succulents.jpg'
# echo '-------------------------------------------------------------------------------'
#)
#
##-------------------------------------------
#
## Install Plymouth theme
#
##-------------------------------------------
#
## Install Launch Pad
#echo "Installing macOS Launch Pad ..."
#sudo apt-get install -y xdotool
#curl https://raw.githubusercontent.com/milan102/Ubuntu-Launchpad/master/launchpad-1.0.deb --output 'launchpad-1.0.deb'
#sudo apt-get install -y ./launchpad-1.0.deb
#rm launchpad-1.0.deb
#
##-------------------------------------------
#
## Install more Apple Icons
#(
#cd $WORKDIR/BigSur-Icons/scalable
#echo 'Installing more Apple icons ...'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-books.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/4a093ec11972cbbfd243641f01c904cb_1605217752576_books.icns -o 'apple-books.icns'
#echo 'Download complete: Icon apple-books.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-calculator.icns ...'
#curl http://82.145.63.160:1337/parse/files/macOSicons/beab35897eceba25b5a09de965fbb516_1605217752576_calculator.icns -o 'apple-calculator.icns'
#echo 'Download complete: Icon apple-calculator.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-calendar.icns ...'
#curl http://82.145.63.160:1337/parse/files/macOSicons/d634e1336863f8249bb60b6690708883_1605217752576_calendar.icns -o 'apple-calendar.icns'
#echo 'Download complete: Icon apple-calendar.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-controll-center.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/534e1b95145dc61840e1b1c4fd6e08ef_1612506575424.icns -o 'apple-controll-center.icns'
#echo 'Download complete: Icon apple-controll-center.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-facetime.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/c716ca7af743127cba892d346117f50f_1605217752576_facetime.icns -o 'apple-facetime.icns'
#echo 'Download complete: Icon apple-facetime.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-launchpad.icns ...'
#curl https://onionicons.com/parse/files/macOSicons/1b6567cbab0e1e8fa195971a0cfe578e_1605217752576_launchpad.icns -o 'apple-launchpad.icns'
#echo 'Download complete: Icon apple-launchpad.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-mail.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/5adcc127f61a1d9492687c7cd6b68b15_1605217752576_mail.icns -o 'apple-mail.icns'
#echo 'Download complete: Icon apple-mail.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-messages.icns ...'
#curl https://onionicons.com/parse/files/macOSicons/f0bbab54354e192138688b951ea622da_1605217752576_messages.icns -o 'apple-messages.icns'
#echo 'Download complete: Icon apple-messages.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-music.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/55706d1d16a86badffe9531b5a926cda_1605217752576_music.icns -o 'apple-music.icns'
#echo 'Download complete: Icon apple-music.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-notes.icns ...'
#curl https://media.macosicons.com/parse/files/macOSicons/10e7d8ab67eea0cccaf4fcf57fc91da6_1605217752576_notes.icns -o 'apple-notes.icns'
#echo 'Download complete: Icon apple-notes.icns'
#echo '-------------------------------------------------------------------------------'
#echo 'Downloading icon apple-safari.icns ...'
#curl http://82.145.63.160:1337/parse/files/macOSicons/e3abe223969631d7e993cdebe113c653_1605217752576_safari.icns -o 'apple-safari.icns'
#echo 'Download complete: Icon apple-safari.icns'
#echo '-------------------------------------------------------------------------------'
#
#icns2png --extract apple-books.icns
#icns2png --extract apple-calculator.icns
#icns2png --extract apple-calendar.icns
#icns2png --extract apple-controll-center.icns
#icns2png --extract apple-facetime.icns
#icns2png --extract apple-launchpad.icns
#icns2png --extract apple-mail.icns
#icns2png --extract apple-messages.icns
#icns2png --extract apple-music.icns
#icns2png --extract apple-notes.icns
#icns2png --extract apple-safari.icns
#
#convert apple-books_256x256x32.png -crop 234x234+11+11 apple-books.png
#convert apple-calculator_256x256x32.png -crop 234x234+11+11 apple-calculator.png
#convert apple-calendar_256x256x32.png -crop 234x234+11+11 apple-calendar.png
#convert apple-controll-center_256x256x32.png -crop 234x234+11+11 apple-controll-center.png
#convert apple-facetime_256x256x32.png -crop 234x234+11+11 apple-facetime.png
#convert apple-launchpad_256x256x32.png -crop 234x234+11+11 apple-launchpad.png
#convert apple-mail_256x256x32.png -crop 234x234+11+11 apple-mail.png
#convert apple-messages_256x256x32.png -crop 234x234+11+11 apple-messages.png
#convert apple-music_256x256x32.png -crop 234x234+11+11 apple-music.png
#convert apple-notes_256x256x32.png -crop 234x234+11+11 apple-notes.png
#convert apple-safari_256x256x32.png -crop 234x234+11+11 apple-safari.png
#)
#
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-calculator.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-calendar.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-facetime.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-launchpad.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-mail.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-messages.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-music.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-notes.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#sudo cp $WORKDIR/BigSur-Icons/scalable/apple-safari.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#
# echo 'Download complete: Icon apple-ibooks.svg'
# echo '-------------------------------------------------------------------------------'
# echo 'Download complete: Icon apple-messages.svg'
# echo '-------------------------------------------------------------------------------'
# echo 'Download complete: Icon apple-camera.svg'
# echo '-------------------------------------------------------------------------------'
# echo 'Download complete: Icon apple-mail.svg'
# echo '-------------------------------------------------------------------------------'
# echo 'Download complete: Icon apple-notes.svg'
# echo '-------------------------------------------------------------------------------'
#
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-phone.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-ibooks.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-messages.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-camera.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-mail.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-notes.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
# sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-safari.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
#
#echo 'Update icon cache'
#sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur/
#sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur-dark/
