#!/bin/bash

source .env2
ls
scp -r ./cat ws1@192.168.0.110:/home/ws1/cicd/
scp -r ./grep ws1@192.168.0.110:/home/ws1/cicd/
scp -r ./arts ws1@192.168.0.110:/home/ws1/cicd/
scp -r ./Makefile ws1@192.168.0.110:/home/ws1/cicd/


ssh ws1@192.168.0.110 "echo "$PASSWORD" | sudo -S  rm -rf /usr/local/bin/* &&  echo "$PASSWORD" | sudo -S  mv -f /home/ws1/cicd/cat /home/ws1/cicd/grep /home/ws1/cicd/Makefile /home/ws1/cicd/arts /usr/local/bin/"
