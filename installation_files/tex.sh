#sudo apt-get install texmaker
#echo "tex maker is installed"
#echo "---------------------------------------------------------------------"
#sudo apt-add-repository http://ppa.launchpad.net/texlive-backports/ppa/ubuntu
#sudo apt-get update
#sudo apt-get install texlive-base
##sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
##echo "deb http://miktex.org/download/ubuntu bionic universe" | sudo tee /etc/apt/sources.list.d/miktex.list
##echo "deb http://miktex.org/download/ubuntu xenial universe" | sudo tee /etc/apt/sources.list.d/miktex.list
##sudo apt-get update
##sudo apt-get install miktex

echo "Installting complete Latex package "
echo "------------------------------------------------------------------------------------"
sudo apt install texlive-full -y
if [ $ -ne 0 ]; then
  echo "!!!!!!!!!!!!!!! "$ " !!!!!!!!!!!!!!!!"
  echo "========= ERROR !!! FAILED to install texlive full ==========="
  echo "Installing aptitude"
  sudo apt-get install aptitude
  echo "aptitude installed, now interactive process begins... please select appropriate resolution"
  sudo aptitude install textlive-full 
  exit 1
fi

#sudo add-apt-repository ppa:sunderme/texstudio
#sudo apt-get remove texstudio-d*
#sudo apt-get update
#sudo apt-get install texstudio -y

