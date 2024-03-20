# Create a virtual environment
echo "Creating a virtual environment..."
yum install sqlite sqlite-devel
python3.9 -m venv venv
source venv/bin/activate

echo "Installing the latest version of pip..."
python -m pip install --upgrade pip

# Build the project
echo "Building the project..."
python -m pip install -r requirements.txt

echo "Make Migration..."
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

# Collect static files
echo "Collecting static files..."
python manage.py collectstatic --noinput --clear