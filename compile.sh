#!/bin/bash
sudo apt-get update 
sudo apt install gcc git 
sudo apt install curl 
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs/ | sh 
sudo apt install make 
mkdir ~/packet
cd ~/packet 
git clone https://github.com/cjdelisle/packetcrypt_rs 
cd packetcrypt_rs 
sudo apt install clang 
cargo clean 
CC=clang cargo build --release --features jemalloc
read pktwallet
./packetcrypt_rs/target/release/packetcrypt ann -p $pktwallet http://pool.srizbi.com/ http://pool.pktpool.io/ http://pool.pkt.world/ http://pool.pkteer.com/ http://pktco.in/ http://pool-pkt.dlinodes.com:8080/