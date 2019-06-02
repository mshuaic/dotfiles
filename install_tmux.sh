url=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.assets[0].browser_download_url')
filename=$(curl -s https://api.github.com/repos/tmux/tmux/releases/latest | jq -r '.assets[0].name')
cpath=`pwd`
folder='tmux'

cd /tmp
wget $url
mkdir $folder
tar -xf $filename -C $folder --strip-components=1
cd $folder
./configure && make
sudo make install

cd $cpath
