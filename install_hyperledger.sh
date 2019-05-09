#Steps to setup Hyperledger

#installing docker PPA
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common Y
url -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -  
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

#nstalling docker
sudo apt-get update  
sudo apt-get install docker-ce
   
#now add the docker to the sudo group
sudo usermod -aG sudo $USER
sudo groupadd docker
sudo usermod -aG docker $USER
echo "	YOU MUST NOW RESTART YOUR PC"
sleep 10

#installing docker compose
echo "Installing docker compose"

# installing docker compose:
sudo apt-get install python-pip
sudp apt install docker-compose
# sudo pip install docker-compose

#Cheching the version of docker-compose
#Link is https://vexxhost.com/resources/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-14-04/
echo "the version of docker compose is: "
docker-compose --version

#setting path of Go
echo "setting the path for  the Go"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#installing Node.js
#Link for the instructions https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-16-04
# echo "installing Node.js and Npm"
# sudo apt-get update
# sudo apt-get install nodejs
# sudo apt-get install npm

# #Checking the version of Nodejs
# echo "checking the version of Node.js"
# nodejs -v

# #Another way to install node.js, this time with higher version 
# sudo apt-get install curl python-software-properties
# curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
# sudo apt-get update 
# sudo apt-get install nodejs


# #Checking the version of Nodejs
# echo "checking the version of Node.js"
# nodejs -v

# cd node-v8.11.3
#INSTALLING NODE.JS 
#https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04


#you need to install docker and docker compose before this.

#Installing nodejs and npm
echo "INSTALLING NODEJS AS PER THE LINK https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-18-04"
sleep 2
curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh -o install_nvm.sh
bash install_nvm.sh
source ~/.profile
nvm ls-remote
echo "DISPLAYING THE LIST OF THE VERSIONS --- PLEASE INSTALL THE ONE WITH LTS. THIS ONE INSTALLS THE V8.11.3"
sleep 5
nvm install 8.11.3
nvm use 8.11.1
node -v
echo "PEASE CHECK THE VERSION INSTALLLED BEFORE PROCEEDING"
sleep 5

#nstalling binaries for hyperledger
echo "NOW INSTALLING BINARIES FOR HYPERLEDGER"	
mkdir ~/Hyperledger
mkdir ~/Hyperledger/binaries
cp install_hyper2.sh ~/Hyperledger/binaries

echo "====> coprying system specific binaries to the folder ~/Hyperledger/binaries"
sleep 3

cd ~/Hyperledger
git clone -b master https://github.com/hyperledger/fabric-samples.git
cd fabric-samples
cd ..
cd binaries
chmod +x install_hyper2.sh
# curl -sSL https://goo.gl/6wtTN5 | bash -s 1.1.0
./install_hyper2.sh
export PATH=~/Hyperledger/binaries/bin:$PATH



