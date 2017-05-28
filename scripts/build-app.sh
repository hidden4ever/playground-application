## Set up virtual env
## Comment this out if you do not want an virtual env to be set up
VIRTUALENVDIRECTORY="../../.virtualenvs"
VIRTUALENVNAME="eb2"

if [ ! -d "${VIRTUALENVDIRECTORY}" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  echo "${VIRTUALENVDIRECTORY} does not exist. creating.." 
  mkdir "${VIRTUALENVDIRECTORY}"
  echo "...."
fi

if [ -d "${VIRTUALENVDIRECTORY}" ]; then
  VIRTUALENVDIRECTORYENV="${VIRTUALENVDIRECTORY}/${VIRTUALENVNAME}"
  echo "${VIRTUALENVDIRECTORY} now exists. Checking to see if virtual env ${VIRTUALENVDIRECTORYENV} exists.."
 
  if [ ! -d "${VIRTUALENVDIRECTORYENV}" ]; then
    # Control will enter here if $DIRECTORY doesn't exist.
    echo "${VIRTUALENVDIRECTORYENV} does not exist. creating.."
    virtualenv "${VIRTUALENVDIRECTORYENV}"
  fi

  if [ -d "${VIRTUALENVDIRECTORYENV}" ]; then
    echo "Virtual env now exists ${VIRTUALENVDIRECTORYENV}.Activating..."
    source "${VIRTUALENVDIRECTORYENV}/bin/activate"
  fi
fi

echo "VIRTUAL ENV has been activated"


pip install -r ../requirements.txt
cd ../API
python manage.py migrate

# Install Angular 2 dependencies
cd ../public
npm install
