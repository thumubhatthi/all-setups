#! /bin/bash
#Launch an instance with 9000 and t2.medium
cd /opt/
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-8.9.6.50800.zip
sudo apt install unzip -y
unzip sonarqube-8.9.6.50800.zip
sudo apt install openjdk-17-jre -y
useradd sonar
chown sonar:sonar sonarqube-8.9.6.50800 -R
chmod 777 sonarqube-8.9.6.50800 -R
su - sonar
cd /opt
cd sonarqube-8.9.6.50800/bin/linux-x86-64/
./sonar.sh start
./sonar.sh status
