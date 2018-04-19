#!/bin/sh

# Need to take a tag varialbe
# mediavars to test media
# webservervars to test webservers
# hostvar to test host var
# use playbook tags maybe?

case "$1" in
  mediavars)
    ansible-playbook -i /home/ansible/inventory /home/ansible/scripts/backup.yml --tags "mediavars"
    exit $?
    ;;
  webservervars)
    ansible-playbook -i /home/ansible/inventory /home/ansible/scripts/backup.yml --tags "webservervars"
    exit $?
    ;;
  hostvar)
    ansible-playbook -i /home/ansible/inventory /home/ansible/scripts/backup.yml --tags "hostvar"
    exit $?
    ;;
  *)
    ansible-playbook -i /home/ansible/inventory /home/ansible/scripts/backup.yml
    exit $?
esac
