echo "export PATH=/usr/local/anaconda2/bin:$PATH" >> /etc/bash.bashrc
echo "export JAVA_HOME=/usr/lib/jvm/java-8-oracle/" >> /etc/bash.bashrc
echo "export PATH=$PATH:$JAVA_HOME/bin" >> /etc/bash.bashrc
sudo apt-get remove scala-library scala
sudo wget www.scala-lang.org/files/archive/scala-2.11.8.deb
sudo dpkg -i scala-2.11.8.deb
echo $(scala -version)
echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823
sudo apt-get update
sudo apt-get install sbt
#Installing scala REPL
sudo apt-get install scala -y
