echo "BUILD START"
RUN yum install -y gcc openssl-devel bzip2-devel libffi-devel make sqlite-devel
ARG PY37_VERSION=3.7.6
RUN cd /usr/src && curl https://www.python.org/ftp/python/${PY37_VERSION}/Python-${PY37_VERSION}.tgz | tar -xz &&\
  cd Python-${PY37_VERSION} && ./configure --enable-optimizations && make -j4 altinstall &&\
  rm -rf /usr/src/Python-${PY37_VERSION}
pip install --upgrade pip
python3.7 -m pip install -r requirements.txt
python3.7 manage.py collectstatic --noinput --clear
echo "BUILD END"