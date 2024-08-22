pdir=`dirname $0`

#sudo apt-get install mpi libopenmpi-dev libblas-dev liblapack-dev
#sudo yum install -y openmpi-devel liblas-devel lapack-devel --skip-broken
#export PATH=$PATH:/usr/lib64/openmpi/bin/:~/bin #find mpif90 in path
#cd ../
#sudo chmod 755 tarik
#sudo chmod 755 lii26466

#### fftw
if [ ! -d Documents]; then mkdir -p Documents/fftw;fi
cd Documents/fftw
wget http://www.fftw.org/fftw-3.3.9.tar.gz
tar -xvzf fftw-3.3.9.tar.gz
cd fftw-3.3.9
./configure --enable-shared # --enable-float --enable-threads
make
sudo make install

### compile native FELIX
mkdir -p ~/Documents/git/ccp4/src/
export PATH=/usr/lib/openmpi/bin/
cd ~/Documents/git/ccp4/src/
git clone https://github.com/ronandrevon/Felix.git felix
cd felix
git checkout v2.2.0
cd src
make

sudo ln -s /home/$USER/Documents/git/ccp4/src/felix/src/felix.OPT64NGNU.d /home/$USER/felix
