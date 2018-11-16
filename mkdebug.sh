#/bin/sh


echo "Compiling and installing mympd"
[ -d debug ] || mkdir debug
cd debug
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_BUILD_TYPE=RELEASE ..
make
# make install
sudo ./mympd mympd.conf
