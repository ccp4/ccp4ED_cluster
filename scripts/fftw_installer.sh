pdir=`dirname $0`
#### fftw
if [ ! -d Documents/fftw]; then mkdir -p Documents/fftw;fi
cd Documents/fftw
wget http://www.fftw.org/fftw-3.3.9.tar.gz
tar -xvzf fftw-3.3.9.tar.gz
cd fftw-3.3.9
./configure --enable-shared # --enable-float --enable-threads
make
sudo make install
