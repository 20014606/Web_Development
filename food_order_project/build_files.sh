echo "BUILD START"
yum install -y gcc openssl-devel bzip2-devel libffi-devel make sqlite-devel
PY39_VERSION=3.9
cd /usr/src && curl https://www.python.org/ftp/python/${PY39_VERSION}/Python-${PY39_VERSION}.tgz | tar -xz &&\
cd Python-${PY39_VERSION} && ./configure --enable-optimizations && make -j4 altinstall
pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"