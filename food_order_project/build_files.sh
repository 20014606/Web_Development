echo "BUILD START"
yum install -y gcc openssl-devel bzip2-devel libffi-devel make sqlite-devel
pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"