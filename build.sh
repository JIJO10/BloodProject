#!/bin/bash  
set -o errexit  # Exit on any error  

pip install --upgrade pip  # Ensure the latest pip version  
pip install -r requirements.txt  # Install dependencies  

python manage.py migrate  # Apply database migrations  
python manage.py collectstatic --no-input  # Collect static files  
