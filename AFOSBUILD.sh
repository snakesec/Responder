rm -rf /opt/ANDRAX/responder

apt update
apt install -y python3-netifaces

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "APT install python3-netifaces... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf $(pwd) /opt/ANDRAX/responder

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf andraxbin/* /opt/ANDRAX/bin
