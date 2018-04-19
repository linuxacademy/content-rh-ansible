#!/bin/sh

# Need to take a tag varialbe
# mediavars to test media
# webservervars to test webservers
# hostvar to test host var
# use playbook tags maybe?

case "$1" in
  mediavars)

    ;;
  webservervars)

    ;;
  hostvar)

    ;;
  *)
    ansible-playbook -i /home/ansible/inventory /home/ansible/backup.yml
