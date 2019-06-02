
filename='emacs-26.2.tar.gz'
url="http://ftp.wayne.edu/gnu/emacs/$filename"
cpath=`pwd`
folder='emacs'

cd /tmp
wget $url
mkdir $folder
tar -xf $filename -C $folder --strip-components=1
cd $folder
./configure && make
sudo make install

cd $cpath
