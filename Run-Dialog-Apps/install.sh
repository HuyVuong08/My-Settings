#!/bin/sh

#Install terminal-run-dialog-app
echo Installing terminal-run-dialog-app
result=$(sudo cp -vi terminal /usr/bin/)
success="'terminal' -> '/usr/bin/terminal'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/terminal
fi

#Install safari-run-dialog-app
echo '\n'Installing safari-run-dialog-app
result=$(sudo cp -vi safari /usr/bin/) 
success="'safari' -> '/usr/bin/safari'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/safari
fi

#Install open-run-dialog-app
echo '\n'Installing open-run-dialog-app
result=$(sudo cp -vi open /usr/bin/) 
success="'open' -> '/usr/bin/open'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/open
fi

#Install note-run-dialog-app
echo '\n'Installing note-run-dialog-app
result=$(sudo cp -vi note /usr/bin/) 
success="'note' -> '/usr/bin/note'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/note
fi

#Install mail-run-dialog-app
echo '\n'Installing mail-run-dialog-app
result=$(sudo cp -vi mail /usr/bin/) 
success="'mail' -> '/usr/bin/mail'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/mail
fi

#Install settings-run-dialog-app
echo '\n'Installing settings-run-dialog-app
result=$(sudo cp -vi settings /usr/bin/) 
success="'settings' -> '/usr/bin/settings'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/settings
fi

