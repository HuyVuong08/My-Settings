#Uninstall Hardisk Sentinel
echo "Uninstalling Hardisk Sentinel ..."
curl 'https://www.hdsentinel.com/hdslin/hdsentinel_gui64bit.tar.xz' | tar -Jxv
sudo ./HDSentinel_GUI/uninstall.sh
rm -rf HDSentinel_GUI
