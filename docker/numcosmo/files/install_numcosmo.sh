#!/bin/bash

USER_NAME=numcosmo
USER_PASS=numcosmo

export DEBIAN_FRONTEND=noninteractive


if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# instalando aplicacoes necessarias
apt-get update
apt-get install -y vim openssh-server git python-pip


# resolvendo problema com locale
apt­get install -y locales
locale-gen en_US.UTF-8

# instalando dependencias
apt-get -y install gir1.2-glib-2.0 libgirepository1.0-dev gcc pkg-config libglib2.0-dev libgmp3-dev libmpfr-dev libgsl0-dev libfftw3-dev autotools-dev libtool gtk-doc-tools gfortran libcfitsio-dev libsundials-nvecserial0 libsundials-serial-dev python-tk libnlopt-dev libnlopt0
apt-get -y install python-gi python-gi-cairo python3-gi python3-gi-cairo gir1.2-gtk-3.0

# Criando usuario
groupadd $USER_NAME
useradd $USER_NAME
echo $USER_NAME:$USER_PASS | chpasswd

echo root:$USER_PASS | chpasswd


su - $USER_NAME
mkdir $HOME/cosmology
cd $HOME/cosmology
git clone https://github.com/NumCosmo/NumCosmo.git

cd NumCosmo
./autogen.sh
make -j4
# voltando a ser root
exit
make install

pip install numpy matplotlib scipy

