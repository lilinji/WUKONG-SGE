yum install zlib zlib-devel -y
yum -y install zlib*
yum  install -y make build-essential libssl-dev zlib1g-dev libbz2-dev 2 libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev 3 xz-utils tk-dev
cd /opt
wget --no-check-certificate http://3811.oss-cn-beijing.aliyuncs.com/Python-2.7.6.tar.xz
tar xf Python-2.7.6.tar.xz
cd Python-2.7.6
./configure --prefix=/usr/local
sudo make && sudo make altinstall
#VERSION=$(python2.6  --version)

PYTHON_VERSION=`ls /usr/bin/python* |tail -n 1|awk -F "/" '{print $4}'`

sudo mv /usr/bin/python /usr/bin/$PYTHON_VERSION

sudo ln -s /usr/local/bin/python2.7 /usr/bin/python

sed -i  "s/python/python2.6/g"  /usr/bin/yum


cd /opt
wget http://3811.oss-cn-beijing.aliyuncs.com/get-pip.py

python get-pip.py

ln -s /usr/local/python27/bin/pip2.7 /usr/bin/pip

pip install ipython==1.2.1

ln -s /usr/local/python27/bin/ipython /usr/bin/ipython

pip install chardet

wget  http://3811.oss-cn-beijing.aliyuncs.com/ssh-copy-id

`unalias cp`

cp -f  ssh-copy-id /usr/bin
