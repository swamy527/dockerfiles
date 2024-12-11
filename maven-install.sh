#!/bin/bash
ID=$(id -u)

if [ $ID -ne 0 ]; then
   echo "run script with root privileges"
   exit 1
else
   echo "your are root user"
fi

echo "yum update"

yum update -y > /dev/null

echo "installing java"

yum install java-1.8.0-openjdk-devel -y > /dev/null

wget -P /opt https://dlcdn.apache.org/maven/maven-3/3.9.9/binaries/apache-maven-3.9.9-bin.tar.gz > /dev/null

cd /opt

tar -xvf apache-maven-3.9.9-bin.tar.gz > /dev/null

mv apache-maven-3.9.9 maven

sed -i '$a\export M2_HOME=/opt/maven \nexport PATH=$PATH:$M2_HOME/bin' /home/ec2-user/.bash_profile > /dev/null

echo "type source .bash_profile"

