# use the official python image
from python:3.10
#set the working directory in the container
workdir /app
#copy the project files into the container
copy . /app
#install dependencies
run pip install --no-cache-dir -r requirements.txt
#expose the port Django runs on
expose 8000
#run the application 
cmd ["python","manage.py","runserver","0.0.0.0:8000"]
