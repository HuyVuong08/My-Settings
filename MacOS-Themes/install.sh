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
#
## Install Plank Dock
#echo "Installing Plank Dock ..."
#sudo apt-get install -y plank
#
## Launch Plank Dock On Startup
#ln -s /usr/share/applications/plank.desktop $HOME/.config/autostart/plank.desktop
#
##-------------------------------------------
#
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
## Install GTk Themes
#echo 'Installing MacOS Big Sur GTK Themes ...'
#git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git
#cd $WORKDIR/WhiteSur-gtk-theme
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' -s '260'
#sudo ./install.sh -d '/usr/share/themes/' -o 'standard' --nautilus-use-colors
#sudo ./install.sh -g -c 'light'
#cd $WORKDIR
#
##-------------------------------------------
#
## Install Icon Themes
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
## Install Firefox Themes
#echo 'Installing MacOS Big Sur Firefox Themes ...'
#mv WhiteSur-gtk-theme/src/other/firefox/chrome $HOME/.mozilla/firefox/*.default-release
#
##-------------------------------------------
#
## Install Plank Dock Themes
#echo 'Installing MacOS Big Sur Plank Dock Themes ...'
#
## Install Dark Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-dark && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-dark/* $_
#
##Install Light Themes
#sudo mkdir /usr/share/plank/themes/macOS-BigSur-light && sudo mv WhiteSur-gtk-theme/src/other/plank/theme-light/* $_
#
## Remove WhiteSur-gtk-theme folder
#rm -rf WhiteSur-gtk-theme
#
##-------------------------------------------
#
## Install Albert Spotlight theme
#echo 'Installing MacOS Big Sur Albert Spotlight ...'
#curl https://build.opensuse.org/projects/home:manuelschneid3r/public_key | sudo apt-key add -
#echo 'deb http://download.opensuse.org/repositories/home:/manuelschneid3r/xUbuntu_20.04/ /' | sudo tee /etc/apt/sources.list.d/home:manuelschneid3r.list
#sudo wget -nv https://download.opensuse.org/repositories/home:manuelschneid3r/xUbuntu_20.04/Release.key -O "/etc/apt/trusted.gpg.d/home:manuelschneid3r.asc"
#sudo apt update
#sudo apt install albert
#
##-------------------------------------------
#
## Install Wallpaper
#echo 'Downloading MacOS BigSur Wallpaper ...'
#(
#mkdir -p $HOME/Pictures/macOS-BigSur-Wallpaper && cd "$_"
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Appearance.png --output 'BigSur-Color-Light.jpg'
#echo 'Download complete BigSur-Color-Light.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Peak-2-dragged.jpg --output 'BigSur-Peak.jpg'
#echo 'Download complete BigSur-Peak.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Valley-2-dragged.jpg --output 'BigSur-Valley.jpg'
#echo 'Download complete BigSur-Valley.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Dome-2-dragged.jpg --output 'BigSur-Dome.jpg'
#echo 'Download complete BigSur-Dome.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Tree-2-dragged.jpg --output 'BigSur-Tree.jpg'
#echo 'Download complete BigSur-Tree.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Beach-7-dragged.jpg --output 'BigSur-Beach.jpg'
#echo 'Download complete BigSur-Beach.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Cliffs-6-dragged.jpg --output 'BigSur-Cliffs.jpg'
#echo 'Download complete BigSur-Cliffs.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Desert-6-dragged.jpg --output 'BigSur-Desert.jpg'
#echo 'Download complete BigSur-Desert.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/The-Lake-7-dragged.jpg --output 'BigSur-Lake.jpg'
#echo 'Download complete BigSur-Lake.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Iridescence-Dark.png --output 'BigSur-Iridescence-Dark.jpg'
#echo 'Download complete BigSur-Iridescence.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Road.png --output 'BigSur-Road.jpg'
#echo 'Download complete BigSur-Road.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1652.Noodles_Blue_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Blue-Dark.jpg'
#echo 'Download complete BigSur-Noodles-Blue-Dark.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1612.Noodles_Green_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Green-Dark.jpg'
#echo 'Download complete BigSur-Noodles-Green-Dark.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1622.Noodles_Pink_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Pink-Dark.jpg'
#echo 'Download complete BigSur-Noodles-Pink-Dark.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1632.Noodles_Silver_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Silver-Dark.jpg'
#echo 'Download complete BigSur-Noodles-Silver-Dark.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/09/1642.Noodles_Gray_Dark-820w-1180h@2xipad.png --output 'BigSur-Noodles-Gray-Dark.jpg'
#echo 'Download complete BigSur-Noodles-Gray-Dark.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_1NE45_Blue.jpg --output 'BigSur-Safari-Blue.jpg'
#echo 'Download complete BigSur-Safari-Blue.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_2NE45_Pink.jpg --output 'BigSur-Safari-Pink.jpg'
#echo 'Download complete BigSur-Safari-Pink.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Safari_Background_3NE45_Orange.jpg --output 'BigSur-Safari-Orange.jpg'
#echo 'Download complete BigSur-Safari-Orange.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Grasses.png --output 'BigSur-Night-Grasses.jpg'
#echo 'Download complete BigSur-Night-Grasses.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Big-Sur-Night-Succulents.png --output 'BigSur-Night-Succulents.jpg'
#echo 'Download complete BigSur-Night-Succulents.jpg'
#echo '-------------------------------------------------------------------------------'
#)
#
##-------------------------------------------
#
## Install Plymouth Theme
#
##-------------------------------------------
#
## Install Launch Pad
#echo "Installing macOS Launch Pad ..."
#sudo apt-get install -y xdotool
#curl https://raw.githubusercontent.com/milan102/Ubuntu-Launchpad/master/launchpad-1.0.deb --output 'launchpad-1.0.deb'
#sudo apt-get install -y ./launchpad-1.0.deb
#rm launchpad-1.0.deb
## Install Wallpaper
#
#-------------------------------------------
#
## Install Wallpaper
#echo 'Downloading MacOS BigSur Wallpaper ...'
#(
#mkdir -p $HOME/Pictures/macOS-BigSur-Wallpaper && cd "$_"
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/06/Appearance.png --output 'BigSur-Color-Light.jpg'
#echo 'Download complete BigSur-Color-Light.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Peak-2-dragged.jpg --output 'BigSur-Peak.jpg'
#echo 'Download complete BigSur-Peak.jpg'
#echo '-------------------------------------------------------------------------------'
#curl https://9to5mac.com/wp-content/uploads/sites/6/2020/10/Valley-2-dragged.jpg --output 'BigSur-Valley.jpg'
#echo 'Download complete BigSur-Valley.jpg'
#echo '-------------------------------------------------------------------------------'
#)

echo 'Installing more Apple icons ...'
(
cd /usr/share/icons/WhiteSur/apps/scalable/
curl 'https://download.dev.services.iconscout.com/download?name=apple-phone&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493154.svg%3FExpires%3D1615593600%26Signature%3DHTPToRsIVOZIdV7ssGvd%7Eu8ikcZsS90DlZeiTatxwaIIszjQsChmA6NNjFLcS8yHgqCBKqcZvfznf3RmgxQuq2C2TYH8KsOzjkONtTG1i4itPfGQss344jNILt5FSFnvGV%7EKscOk7C6Gb2eoQu42zD5KfY0rowpUq8-SdW51fhIbGbFX4U7EfIyw76MWOEWP6Esna2zddzP6655vJPumUyqnrfS7Un8mKCHgvV2toOu17EjkuW8SDJ3dTqkun9HzOE6RRXjkTFCUWds-7emKXjMitb5pSsNi4Ow8lP35SFOPQWsmBRgsY1hRhkyRB%7E6MzRUcuyl57xB7-xCAbFbstg__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-phone.svg'
echo 'Download complete apple-phone.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-ibooks&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493146.svg%3FExpires%3D1615593600%26Signature%3Davlnld8fLXgWZQnHnkC367zxxaeBgzRr34-unRBZPIPZoJks654xU24HLqhA510gbnULtfJL%7EBgxXqT3xjJwJ4802EP0iPEEpJkWUz4fzbfburozpKCD2k7Gu8Tz7JfHcEv3PN3ONI8OCZXSiHSEaVpKShG9eRTS3tTgdrAaKyQQK-2MCVJz0DKPQhw0yQL4qGiw7EbcUjhQnt12HOMSd66q8AHwBZ8yM1Gy1kOLb-n15DE708lsnhGa5uxyzVMzlsfTEFbhHnlT%7EsuOqOkwi6YR6XyIRj6GOVE8bc99c6wp1IggiinNmPzggCa%7ESGXrDRoNM0LwOZTbdW-aw-So0Q__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-ibooks.svg'
echo 'Download complete apple-ibooks.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-messages&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493150.svg%3FExpires%3D1615593600%26Signature%3Dpt4g-43aj8sS4kSYtcW%7EKWaoI6uOucruui4bl6Qi-J6b7qPIwfPRVm%7EM-ITJwFl6v4NzA3kVBfcwseiRCDUmSQc16TSfR19mF49KQNx0%7EBz52BRT-G5q3Teg-Yz7Ea%7E%7E24lIexZ8qkeiNaR2sf1ePW9MlQDSWCuhMOd3spDEEBDGcWCPF4gERsyJ0aDMvpVlz2i57ALchY3E2D6n2E6eXYtCbzcbvJmUxWm%7ESFf0fuffp2ZbaHUdF%7E785CPNeYLoDcEwu25lDy1r0lbhXgNejtUh1-KsMzBZ6oztdyuYiKZzOHaJtN%7EXogXFH91snlAx8bcZcCbEbJywoHj2iA9nPg__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-messages.svg'
echo 'Download complete apple-massages.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-camera&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493147.svg%3FExpires%3D1615593600%26Signature%3DY8Rb2hHtqh5zs5ntog9Q8fHFJr47qblElf4K6znDcg-qFN%7Ezbylf5YVLOW6-jzG5PRnxt8vogT4v0EMptUv3P-0U3sdPd6y6nJO2PLICgcTbdrNxiRim5EcbFarR27O6jPqb2nm9YUjEVJr0zE58WwGJoJRFXJDFWTX3N7MDiuMiL6ALIvyqdUvBE-KJjzBgtYN1wHC9zY9ltbVf4T6aqkTtHGAvPZEKDQa5%7EABUZ3-GDLO1aSazvdtEBOdKOQblhm5RYu4Vgjv7LY%7EWvc-tucHszSwvWSvIsCRxr06QS%7EEoGPEE1c6judgqRYzCKng8lKByLFV9NBIm-T3kE78Oog__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-camera.svg'
echo 'Download complete apple-camera.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-mail&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493152.svg%3FExpires%3D1615593600%26Signature%3DO22UyAPaKBlp8kw5VNPWsqVsHIk55yEkq%7EIrIhgii0YH%7EKCglBwIc35WhBT-sST57n5nIgkGKe-OSSwviNJT6ffObfIMwFnpxO6MYZFZmXrcNxi9Lk-T9pwlCdSeGAQVlzMaUtQx1cyoyReStH2U6HyCUvSu-DAo134SLunLfc3nOsb5p-5VoXFMBr5gy9RQB116c0NaEQF0BYQ9Vl3QY2fgafIk9SR4aHFu8AjtKT2FlGUY9Glok6NMYAHB93uZ-73HlMSwmIbGkIEB76GxP9areZAhgY%7E46iFYhwO6dGY8elpElUnSx7F7yD2WCeLHhWvM%7EoLXaldnHgK%7Ekh0vIQ__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-mail.svg'
echo 'Download complete apple-mail.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-notes&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493153.svg%3FExpires%3D1615593600%26Signature%3DoCNZv70I8mbHpyB09V-%7EQn0%7ECSE6dkCa2lb6BQQveXyOWB56NrRBI-3jfUTzFI6AxLf0xTLXeN2qj1CVTzlrzl9zvNXBFtzQ%7El6aKiCdGnK1-T7Ad6Hc5jfDO1qxcX5jbHnORSQNBaF6m1RYafjt1PRD3cWHDbofOeq%7Ej-frdszSoJe7OYZENd8s-CeT9D63hMVWh97c%7EED2h-wyKg-ldBWk8KWecjIR699pr4E4GIi9M11-lLXEkSMmrBk0Yqv8sUcjSzSVL0NTiSuGt3qmjLl0%7EV2khG8n1jXtfwEmpbIThXzkeH7ude-hu0vfSQKBMNRwVFwHUlAffv9b1xgsbQ__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-notes.svg'
echo 'Download complete apple-notes.svg'
echo '-------------------------------------------------------------------------------'
sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur/

cd /usr/share/icons/WhiteSur-dark/apps/scalable/
curl 'https://download.dev.services.iconscout.com/download?name=apple-phone&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493154.svg%3FExpires%3D1615593600%26Signature%3DHTPToRsIVOZIdV7ssGvd%7Eu8ikcZsS90DlZeiTatxwaIIszjQsChmA6NNjFLcS8yHgqCBKqcZvfznf3RmgxQuq2C2TYH8KsOzjkONtTG1i4itPfGQss344jNILt5FSFnvGV%7EKscOk7C6Gb2eoQu42zD5KfY0rowpUq8-SdW51fhIbGbFX4U7EfIyw76MWOEWP6Esna2zddzP6655vJPumUyqnrfS7Un8mKCHgvV2toOu17EjkuW8SDJ3dTqkun9HzOE6RRXjkTFCUWds-7emKXjMitb5pSsNi4Ow8lP35SFOPQWsmBRgsY1hRhkyRB%7E6MzRUcuyl57xB7-xCAbFbstg__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-phone.svg'
echo 'Download complete apple-phone.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-ibooks&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493146.svg%3FExpires%3D1615593600%26Signature%3Davlnld8fLXgWZQnHnkC367zxxaeBgzRr34-unRBZPIPZoJks654xU24HLqhA510gbnULtfJL%7EBgxXqT3xjJwJ4802EP0iPEEpJkWUz4fzbfburozpKCD2k7Gu8Tz7JfHcEv3PN3ONI8OCZXSiHSEaVpKShG9eRTS3tTgdrAaKyQQK-2MCVJz0DKPQhw0yQL4qGiw7EbcUjhQnt12HOMSd66q8AHwBZ8yM1Gy1kOLb-n15DE708lsnhGa5uxyzVMzlsfTEFbhHnlT%7EsuOqOkwi6YR6XyIRj6GOVE8bc99c6wp1IggiinNmPzggCa%7ESGXrDRoNM0LwOZTbdW-aw-So0Q__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-ibooks.svg'
echo 'Download complete apple-ibooks.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-messages&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493150.svg%3FExpires%3D1615593600%26Signature%3Dpt4g-43aj8sS4kSYtcW%7EKWaoI6uOucruui4bl6Qi-J6b7qPIwfPRVm%7EM-ITJwFl6v4NzA3kVBfcwseiRCDUmSQc16TSfR19mF49KQNx0%7EBz52BRT-G5q3Teg-Yz7Ea%7E%7E24lIexZ8qkeiNaR2sf1ePW9MlQDSWCuhMOd3spDEEBDGcWCPF4gERsyJ0aDMvpVlz2i57ALchY3E2D6n2E6eXYtCbzcbvJmUxWm%7ESFf0fuffp2ZbaHUdF%7E785CPNeYLoDcEwu25lDy1r0lbhXgNejtUh1-KsMzBZ6oztdyuYiKZzOHaJtN%7EXogXFH91snlAx8bcZcCbEbJywoHj2iA9nPg__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-messages.svg'
echo 'Download complete apple-massages.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-camera&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493147.svg%3FExpires%3D1615593600%26Signature%3DY8Rb2hHtqh5zs5ntog9Q8fHFJr47qblElf4K6znDcg-qFN%7Ezbylf5YVLOW6-jzG5PRnxt8vogT4v0EMptUv3P-0U3sdPd6y6nJO2PLICgcTbdrNxiRim5EcbFarR27O6jPqb2nm9YUjEVJr0zE58WwGJoJRFXJDFWTX3N7MDiuMiL6ALIvyqdUvBE-KJjzBgtYN1wHC9zY9ltbVf4T6aqkTtHGAvPZEKDQa5%7EABUZ3-GDLO1aSazvdtEBOdKOQblhm5RYu4Vgjv7LY%7EWvc-tucHszSwvWSvIsCRxr06QS%7EEoGPEE1c6judgqRYzCKng8lKByLFV9NBIm-T3kE78Oog__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-camera.svg'
echo 'Download complete apple-camera.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-mail&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493152.svg%3FExpires%3D1615593600%26Signature%3DO22UyAPaKBlp8kw5VNPWsqVsHIk55yEkq%7EIrIhgii0YH%7EKCglBwIc35WhBT-sST57n5nIgkGKe-OSSwviNJT6ffObfIMwFnpxO6MYZFZmXrcNxi9Lk-T9pwlCdSeGAQVlzMaUtQx1cyoyReStH2U6HyCUvSu-DAo134SLunLfc3nOsb5p-5VoXFMBr5gy9RQB116c0NaEQF0BYQ9Vl3QY2fgafIk9SR4aHFu8AjtKT2FlGUY9Glok6NMYAHB93uZ-73HlMSwmIbGkIEB76GxP9areZAhgY%7E46iFYhwO6dGY8elpElUnSx7F7yD2WCeLHhWvM%7EoLXaldnHgK%7Ekh0vIQ__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-mail.svg'
echo 'Download complete apple-mail.svg'
echo '-------------------------------------------------------------------------------'
curl 'https://download.dev.services.iconscout.com/download?name=apple-notes&download=1&url=https%3A%2F%2Fduce5lj2f2sxj.cloudfront.net%2Ficon%2Ffree%2Fsvg%2F493153.svg%3FExpires%3D1615593600%26Signature%3DoCNZv70I8mbHpyB09V-%7EQn0%7ECSE6dkCa2lb6BQQveXyOWB56NrRBI-3jfUTzFI6AxLf0xTLXeN2qj1CVTzlrzl9zvNXBFtzQ%7El6aKiCdGnK1-T7Ad6Hc5jfDO1qxcX5jbHnORSQNBaF6m1RYafjt1PRD3cWHDbofOeq%7Ej-frdszSoJe7OYZENd8s-CeT9D63hMVWh97c%7EED2h-wyKg-ldBWk8KWecjIR699pr4E4GIi9M11-lLXEkSMmrBk0Yqv8sUcjSzSVL0NTiSuGt3qmjLl0%7EV2khG8n1jXtfwEmpbIThXzkeH7ude-hu0vfSQKBMNRwVFwHUlAffv9b1xgsbQ__%26Key-Pair-Id%3DAPKAIONEDRCDZGBCR6PA' --output 'apple-notes.svg'
echo 'Download complete apple-notes.svg'
echo '-------------------------------------------------------------------------------'
sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur-dark/
)
