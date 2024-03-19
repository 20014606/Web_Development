echo "BUILD START"
git config --global core.ignorecase false
yum install sqlite-devel
pip install --upgrade pip
python3.9 -m pip install -r requirements.txt
python3.9 manage.py collectstatic --noinput --clear
echo "BUILD END"