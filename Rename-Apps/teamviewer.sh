sudo sed -i '/Name=/s/TeamViewerAPI Scheme Handler/Teamviewer/' /usr/share/applications/teamviewerapi.desktop
echo 'Icon=teamviewer' | sudo tee -a /usr/share/applications/teamviewerapi.desktop
