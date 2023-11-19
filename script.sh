#!/bin/bash

for i in 192.168.0.{1..254}; do
        ping -c1 $i >> /dev/null

        if [ $? = 0 ]; then 
                echo "HOST ATIVO -> $i"
                nmap -sV -p "*"  $i 

        else 
                echo "HOST INATIVO -> $i"
        fi
done
