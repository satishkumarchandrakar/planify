#to install java 1.8 openjdk
sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt-get update 
sudo apt-get install openjdk-8-jdk

#moving java to package repo
mkdir -p tools/java
cp /usr/lib/jvm/java-1.8.0-openjdk-amd64 ./tools/java

#downloading typesafe activator
mkdir -p tools/typesafe
wget -O ./tools/typesafe https://downloads.typesafe.com/typesafe-activator/1.3.7/typesafe-activator-1.3.7.zip
unzip ./tools/typesafe/typesafe-activator-1.3.7.zip -d ./tools/typesafe/
export PATH=./tools/typesafe/activator-dist-1.3.7/:$PATH

./start.sh