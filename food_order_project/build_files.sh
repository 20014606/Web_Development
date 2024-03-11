echo "BUILD START"
yum install sqlite-devel
./configure
make && make altinstall
pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"