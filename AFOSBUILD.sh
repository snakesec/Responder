rm -rf /opt/ANDRAX/responder

python3 -m venv /opt/ANDRAX/responder

source /opt/ANDRAX/responder/bin/activate

/opt/ANDRAX/responder/bin/pip3 install wheel

/opt/ANDRAX/responder/bin/pip3 install -r requirements.txt

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Pip install requirements... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf $(pwd) /opt/ANDRAX/responder/package

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
