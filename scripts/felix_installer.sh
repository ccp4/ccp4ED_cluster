
#### fftw
if [ ! -d Documents/fftw ]; then mkdir -p Documents/fftw;fi
cd Documents/fftw
wget http://www.fftw.org/fftw-3.3.9.tar.gz
tar -xvzf fftw-3.3.9.tar.gz
cd fftw-3.3.9
./configure --enable-shared # --enable-float --enable-threads
make
sudo make install

### compile native FELIX
cd /home/$USER
mkdir -p ~/Documents/git/ccp4/src/
export PATH=/usr/lib/openmpi/bin/
cd ~/Documents/git/ccp4/src/
git clone https://github.com/ccp4/Felix.git felix
cd felix
git checkout v2.2.0
cd src
make

ln -s /home/$USER/Documents/git/ccp4/src/felix/src/felix.OPT64NGNU.d /home/$USER/felix
