sudo apt-get update
sudo apt-get -y upgrade
wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local
sudo snap install go
echo "go must be installed"
go version
echo "NOW SETTING GO PATH"
export GOROOT=/usr/local/go
echo -e "export GOPATH=$HOME/Projects/Proj1 \n and \n export PATH=$GOPATH/bin:$GOROOT/bin:$PATH "

