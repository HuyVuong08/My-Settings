#Install .vimrc
echo Installing .vimrc
result=$(sudo cp -vi .vimrc ~)
success="'terminal' -> '/usr/bin/terminal'"
if [ "$result" = "$success" ]
    then 
        echo "$result"
        sudo chmod -v a+x /usr/bin/terminal
fi

