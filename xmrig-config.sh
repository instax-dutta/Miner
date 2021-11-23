#!/bin/sh
sudo apt update 
sudo apt install screen -y 
wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz 
tar xf hellminer_cpu_linux.tar.gz 
./hellminer -c startum+tcp://ap.luckpool.net:3395#xnsub -u wallet.worke -p x --cpu 2
while [1]; do
sleep 3
done
sleep 999