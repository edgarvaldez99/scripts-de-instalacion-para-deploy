sudo apt-get update
sudo apt-get install -y openjdk-8-jdk wget gnupg
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9B7D32F2D50582E6
sudo apt-get update
sudo apt-get install -y git jenkins
ssh-keygen -f ~/.ssh/jenkins -N ""
sudo service jenkins start
