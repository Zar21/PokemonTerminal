#!/bin/bash
port=`cat Numero.sh`
mkfifo arx$port
nc -l $port < arx$port | ./Principal.sh > arx$port 
rm arx$port
