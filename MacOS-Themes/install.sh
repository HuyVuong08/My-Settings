#!/bin/bash

##Update
#sudo apt-get update -y
#
##-------------------------------------------
#
##Install Curl
#sudo apt-get install -y curl
#
##-------------------------------------------
#
##Install Git
#
#sudo apt-get install -y git
#
##-------------------------------------------
#
##Install Plank Dock
#sudo apt-get install -y plank
#
#-------------------------------------------
#
##Install Requirements and Dependencies
#
#sudo apt-get install -y gtk2-engines-murrine
#sudo apt-get install -y gtk2-engines-pixbuf
#
#sudo apt-get install -y sassc
#sudo apt-get install -y optipng
#sudo apt-get install -y inkscape
#sudo apt-get install -y libglib2.0-dev-bin
#
##-------------------------------------------
#
##Install GTk Themes
#
#git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
#cd WhiteSur-gtk-theme
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' -s '260'
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' --nautilus-use-colors
#sudo ./install.sh -g -c 'light'
#cd ..
#
##-------------------------------------------
#
##Install Icon Themes
#
#git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
#cd WhiteSur-icon-theme
#sudo ./install.sh -d '/usr/share/icons/'
#cd ..
#rm -rf WhiteSur-icon-theme
#
##-------------------------------------------
#
##Install Firefox Themes
#
#mv WhiteSur-gtk-theme/src/other/firefox/chrome $HOME/.mozilla/firefox/*.default-release
#
##-------------------------------------------
#
##Install Plank Dock Themes
#
##Install Dark Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-dark && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-dark/* $_
#
##Install Light Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-light && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-light/* $_
#rm -rf WhiteSur-gtk-theme
##-------------------------------------------
#
##Install Albert Spootlight theme
#
#curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
#sudo apt update
#sudo apt install albert

#-------------------------------------------

#Install Wallpaper

echo 'Downloading MacOS BigSur Wallpaper ...'
(
mkdir -p $HOME/Pictures/macOS-BigSur-Wallpaper && cd "$_"
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Appearance.png -o 'BigSur-Color-Light.jpg'
echo 'Download complete BigSur-Color-Light.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Peak-2-dragged.jpg -o 'BigSur-Peak.jpg'
echo 'Download complete BigSur-Peak.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Valley-2-dragged.jpg -o 'BigSur-Valley.jpg'
echo 'Download complete BigSur-Valley.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Dome-2-dragged.jpg -o 'BigSur-Dome.jpg'
echo 'Download complete BigSur-Dome.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Tree-2-dragged.jpg -o 'BigSur-Tree.jpg'
echo 'Download complete BigSur-Tree.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Beach-7-dragged.jpg -o 'BigSur-Beach.jpg'
echo 'Download complete BigSur-Beach.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Cliffs-6-dragged.jpg -o 'BigSur-Cliffs.jpg'
echo 'Download complete BigSur-Cliffs.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Desert-6-dragged.jpg -o 'BigSur-Desert.jpg'
echo 'Download complete BigSur-Desert.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Lake-7-dragged.jpg -o 'BigSur-Lake.jpg'
echo 'Download complete BigSur-Lake.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Iridescence-Dark.png -o 'BigSur-Iridescence-Dark.jpg'
echo 'Download complete BigSur-Iridescence.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Road.png -o 'BigSur-Road.jpg'
echo 'Download complete BigSur-Road.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1652.Noodles_Blue_Dark-820w-1180h@2xipad.png -o 'BigSur-Noodles-Blue-Dark.jpg'
echo 'Download complete BigSur-Noodles-Blue-Dark.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1612.Noodles_Green_Dark-820w-1180h@2xipad.png -o 'BigSur-Noodles-Green-Dark.jpg'
echo 'Download complete BigSur-Noodles-Green-Dark.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1622.Noodles_Pink_Dark-820w-1180h@2xipad.png -o 'BigSur-Noodles-Pink-Dark.jpg'
echo 'Download complete BigSur-Noodles-Pink-Dark.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1632.Noodles_Silver_Dark-820w-1180h@2xipad.png -o 'BigSur-Noodles-Silver-Dark.jpg'
echo 'Download complete BigSur-Noodles-Silver-Dark.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1642.Noodles_Gray_Dark-820w-1180h@2xipad.png -o 'BigSur-Noodles-Gray-Dark.jpg'
echo 'Download complete BigSur-Noodles-Gray-Dark.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_1NE45_Blue.jpg -o 'BigSur-Safari-Blue.jpg'
echo 'Download complete BigSur-Safari-Blue.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_2NE45_Pink.jpg -o 'BigSur-Safari-Pink.jpg'
echo 'Download complete BigSur-Safari-Pink.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_3NE45_Orange.jpg -o 'BigSur-Safari-Orange.jpg'
echo 'Download complete BigSur-Safari-Orange.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Grasses.png -o 'BigSur-Night-Grasses.jpg'
echo 'Download complete BigSur-Night-Grasses.jpg'
echo '-------------------------------------------------------------------------------'
curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Succulents.png -o 'BigSur-Night-Succulents.jpg'
echo 'Download complete BigSur-Night-Succulents.jpg'
echo '-------------------------------------------------------------------------------'
)
