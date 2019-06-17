#README: make this file executable by command "sudo chmod +x install.sh" and then run "./install.sh"
#updating the repository
sudo apt-get update 

#installing guake
sudo apt-get install guake
echo "guake terminal installed"
sleep 5

#installing python
sudo apt install python -y
echo "PYTHON INSTALLED"
sleep 5
#sudo apt install python3

#installing google Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update 
sudo apt-get install google-chrome-stable -y
echo "GOOGLE CHROME INSTALLED SUCCESSFULLY"
sleep 5

#installing sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text -y
echo "SUBLIME TEXT INSTALLED"
sleep 5

#installing evernote via tusknote
sudo snap install tusk --classic
echo "EVERNOT INSTALLED"
sleep 5

#installing Qbit torrents
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt update && sudo apt install qbittorrent -y
echo "QBIT-TORRENT INSTALLED"
sleep 5

#installing virtual
#better to installed via binaries in http://www.oracle.com/technetwork/server-storage/virtualbox/downloads/index.html
sudo apt-get update
sudo apt-get upgrade
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian `lsb_release -cs` contrib"
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt-get update
sudo apt-get install virtualbox-5.2 -y
echo "VIRTUALBOX INSTALLED"
sleep 5

#installing slack
sudo snap install slack --classic
echo "SLACK INSTALLED"
sleep 3

#install flash plugin
sudo apt-get install flashplugin-installer
echo "flashplugin-installer installed "
sleep 3
#installing team-viewer
wget "https://download.teamviewer.com/download/linux/teamviewer_amd64.deb"
dpkg -i ~/Downloads/teamviewer_amd64.deb
apt-get install -f
echo "TEAM-VIEWER INSTALLED"
rm ~/Downloads/teamviewer_amd64.deb
sleep 5

#installing vim
sudo apt install vim
echo "VIM INSTALLED SUCCESSFULLY"
sleep 3

#installing hyperledger
chmod +x install_hyperledger.sh
./install_hyperledger.sh

wget "https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb"
dpkg -i dropbox_2015.10.28_amd64.deb
apt-get install -f
echo "DROPBOX INSTALLED"
rm ~/Downloads/dropbox_2015.10.28_amd64.deb
echo "Deleting used files for dropbox"
sleep 5

#Installing DC++
sudo apt-get install linuxdcpp
echo "DC++ INSTALLED"
sleep 5

#Installing mailspring
sudo snap install mailspring
echo "Installed MailSprin : an email client"
sleep 5

#Installing java
sudo apt-get install default-jre
sudo apt-get install default-jdk
echo $(java --version)
echo $(javac --version)
echo "Installed java "
sleep 5

#Installing scala
#sudo apt-get install -y scala
#echo "Installed scala"

#Installing vlc
sudo apt-get install -y vim
echo "Installed VLC :)"
