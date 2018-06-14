#!/bin/sh
## This script should run without error completing the documented tasks before completing the exam.

# Create the user john on labservers
ansible labservers -m user -a "name=john"

# Copy the file demo to /home/ansible/demo on node1
ansible node1 copy -a "source=/home/ansible/files/demo dest=/home/ansible/demo"

# Install elinks on all hosts in the labservers host group
ansible -m yum -a "name=elinks state=latest"
