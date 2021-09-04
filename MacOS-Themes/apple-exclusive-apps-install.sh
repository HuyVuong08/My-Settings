#!/bin/bash

# Install imagemagick
echo 'Installing ImageMagick...'
sudo apt-get install -y imagemagick

#-------------------------------------------

# Install icnsutils
echo 'Installing icnsutils'
sudo apt-get install -y icnsutils

#-------------------------------------------
# Install Requirements and Dependencies
echo 'Installing Requirements and Dependencies...'
sudo apt-get install -y gtk2-engines-murrine
sudo apt-get install -y gtk2-engines-pixbuf
sudo apt-get install -y sassc
sudo apt-get install -y optipng
sudo apt-get install -y inkscape
sudo apt-get install -y libglib2.0-dev-bin

#-------------------------------------------

# Install more Apple Icons
(
cd $WORKDIR/BigSur-Icons/scalable
echo 'Installing more Apple icons ...'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-books.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/4a093ec11972cbbfd243641f01c904cb_1605217752576_books.icns -o 'apple-books.icns'
echo 'Download complete: Icon apple-books.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-calculator.icns ...'
curl http://82.145.63.160:1337/parse/files/macOSicons/beab35897eceba25b5a09de965fbb516_1605217752576_calculator.icns -o 'apple-calculator.icns'
echo 'Download complete: Icon apple-calculator.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-calendar.icns ...'
curl http://82.145.63.160:1337/parse/files/macOSicons/d634e1336863f8249bb60b6690708883_1605217752576_calendar.icns -o 'apple-calendar.icns'
echo 'Download complete: Icon apple-calendar.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-controll-center.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/534e1b95145dc61840e1b1c4fd6e08ef_1612506575424.icns -o 'apple-controll-center.icns'
echo 'Download complete: Icon apple-controll-center.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-facetime.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/c716ca7af743127cba892d346117f50f_1605217752576_facetime.icns -o 'apple-facetime.icns'
echo 'Download complete: Icon apple-facetime.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-launchpad.icns ...'
curl https://onionicons.com/parse/files/macOSicons/1b6567cbab0e1e8fa195971a0cfe578e_1605217752576_launchpad.icns -o 'apple-launchpad.icns'
echo 'Download complete: Icon apple-launchpad.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-mail.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/5adcc127f61a1d9492687c7cd6b68b15_1605217752576_mail.icns -o 'apple-mail.icns'
echo 'Download complete: Icon apple-mail.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-messages.icns ...'
curl https://onionicons.com/parse/files/macOSicons/f0bbab54354e192138688b951ea622da_1605217752576_messages.icns -o 'apple-messages.icns'
echo 'Download complete: Icon apple-messages.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-music.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/55706d1d16a86badffe9531b5a926cda_1605217752576_music.icns -o 'apple-music.icns'
echo 'Download complete: Icon apple-music.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-notes.icns ...'
curl https://media.macosicons.com/parse/files/macOSicons/10e7d8ab67eea0cccaf4fcf57fc91da6_1605217752576_notes.icns -o 'apple-notes.icns'
echo 'Download complete: Icon apple-notes.icns'
echo '-------------------------------------------------------------------------------'
echo 'Downloading icon apple-safari.icns ...'
curl http://82.145.63.160:1337/parse/files/macOSicons/e3abe223969631d7e993cdebe113c653_1605217752576_safari.icns -o 'apple-safari.icns'
echo 'Download complete: Icon apple-safari.icns'
echo '-------------------------------------------------------------------------------'

icns2png --extract apple-books.icns
icns2png --extract apple-calculator.icns
icns2png --extract apple-calendar.icns
icns2png --extract apple-controll-center.icns
icns2png --extract apple-facetime.icns
icns2png --extract apple-launchpad.icns
icns2png --extract apple-mail.icns
icns2png --extract apple-messages.icns
icns2png --extract apple-music.icns
icns2png --extract apple-notes.icns
icns2png --extract apple-safari.icns

convert apple-books_256x256x32.png -crop 234x234+11+11 apple-books.png
convert apple-calculator_256x256x32.png -crop 234x234+11+11 apple-calculator.png
convert apple-calendar_256x256x32.png -crop 234x234+11+11 apple-calendar.png
convert apple-controll-center_256x256x32.png -crop 234x234+11+11 apple-controll-center.png
convert apple-facetime_256x256x32.png -crop 234x234+11+11 apple-facetime.png
convert apple-launchpad_256x256x32.png -crop 234x234+11+11 apple-launchpad.png
convert apple-mail_256x256x32.png -crop 234x234+11+11 apple-mail.png
convert apple-messages_256x256x32.png -crop 234x234+11+11 apple-messages.png
convert apple-music_256x256x32.png -crop 234x234+11+11 apple-music.png
convert apple-notes_256x256x32.png -crop 234x234+11+11 apple-notes.png
convert apple-safari_256x256x32.png -crop 234x234+11+11 apple-safari.png
)

sudo cp $WORKDIR/BigSur-Icons/scalable/apple-calculator.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-calendar.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-facetime.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-launchpad.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-mail.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-messages.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-music.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-notes.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
sudo cp $WORKDIR/BigSur-Icons/scalable/apple-safari.svg /usr/share/icons/WhiteSur-dark/apps/scalable/

 echo 'Download complete: Icon apple-ibooks.svg'
 echo '-------------------------------------------------------------------------------'
 echo 'Download complete: Icon apple-messages.svg'
 echo '-------------------------------------------------------------------------------'
 echo 'Download complete: Icon apple-camera.svg'
 echo '-------------------------------------------------------------------------------'
 echo 'Download complete: Icon apple-mail.svg'
 echo '-------------------------------------------------------------------------------'
 echo 'Download complete: Icon apple-notes.svg'
 echo '-------------------------------------------------------------------------------'

 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-phone.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-ibooks.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-messages.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-camera.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-mail.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-notes.svg /usr/share/icons/WhiteSur-dark/apps/scalable/
 sudo cp /usr/share/icons/WhiteSur/apps/scalable/apple-safari.svg /usr/share/icons/WhiteSur-dark/apps/scalable/

echo 'Update icon cache'
sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur/
sudo gtk-update-icon-cache -f /usr/share/icons/WhiteSur-dark/
