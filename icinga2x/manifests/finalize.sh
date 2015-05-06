#!/bin/bash
sudo su
yum install openssl-devel -y
yum install nano -y
chmod -R 0777 /etc/icinga2/conf.d/
echo Installing NRPE
wget http://liquidtelecom.dl.sourceforge.net/project/nagios/nrpe-2.x/nrpe-2.15/nrpe-2.15.tar.gz
tar -xvf nrpe-2.15.tar.gz
cd nrpe-2.15/
/home/vagrant/nrpe-2.15/configure
make -C /home/vagrant/nrpe-2.15/
make -C /home/vagrant/nrpe-2.15/ install	
echo "The Icinga 2 Vagrant VM has finished installing. See http://localhost:8080 for more details."
