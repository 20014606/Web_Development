echo "BUILD START"
yum install sqlite-devel
yum install python3.9
pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"