sudo snap install docker
#apt remove -y libcurl4
#apt install -y libcurl4 curl
sudo apt install nodejs
echo "Insatllled node js"
sudo apt install nodejs --classic
if [ $ -ne 0 ]; then
  echo "!!!!!!!!!!!!!!! "$ " !!!!!!!!!!!!!!!!"
  echo "========= ERROR !!! FAILED to execute End-2-End Scenario ==========="
  echo "Installing aptitude"
  sudo apt-get install aptitude
  echo "aptitude installed, now interactive process begins... please select appropriate resolution"
  sudo aptitude install npm
  exit 1
fi
echo "cloning hyperledger samples repopsitory"
git clone https://github.com/hyperledger/fabric-samples
curl -sSL http://bit.ly/2ysbOFE | bash -s

