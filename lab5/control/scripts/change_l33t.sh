#!/bin/sh

nc -z -w 50ms apps.l33t.com 80 > /dev/null

if [ $? -ne 0 ];
then
  echo -n "Starting apps.l33t.com...";
  ansible node1 -b -m service -a "name=httpd state=started" > /dev/null;
  echo "done."
else
  echo -n "Stopping apps.l33t.com...";
  ansible node1 -b -m service -a "name=httpd state=stopped" > /dev/null;
  echo "done."
fi
