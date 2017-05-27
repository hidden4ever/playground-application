# playground-application
Core Django Application for the playground application

# Install instruction

* Install Python
- Install python http://python-guide-pt-br.readthedocs.io/en/latest/starting/install3/osx/
* Make sure python3 and pip3 are installed 
```
 which python3 pip3
```
* Install mysql client : https://dev.mysql.com/doc/refman/5.6/en/osx-installation-pkg.html

* Set up virtualenvs and activate it
```
mkdir .virtualenvs
virtualenv .virtualenvs/eb2/
source .virtualenvs/eb2/bin/activate
```
* Install django 
```
pip3 install django
```
* Download the code from this repository
```
git clone https://github.com/hidden4ever/playground-application.git playgroundApp
```
* Launch the application
```
cd playgroundApp
pip install -r requirements.txt 
python3 manage.py runserver
```
**You are good to go!!**


