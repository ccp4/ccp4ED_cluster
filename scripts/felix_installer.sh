pdir=`dirname $0`


### compile native FELIX
mkdir -p ~/Documents/git/ccp4/src/
export PATH=/usr/lib/openmpi/bin/
cd ~/Documents/git/ccp4/src/
git clone https://github.com/ccp4/Felix.git felix
cd felix
git checkout v2.2.0
cd src
make

sudo ln -s /home/$USER/Documents/git/ccp4/src/felix/src/felix.OPT64NGNU.d /home/$USER/felix
