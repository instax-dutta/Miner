#!/bin/bash
sudo apt-get update 
sudo apt install gcc git -y
sudo apt install curl screen -y
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs/ | sh 
sudo apt install make -y
source $HOME/.cargo/env
mkdir ~/packet
cd ~/packet 
git clone https://github.com/cjdelisle/packetcrypt_rs 
cd packetcrypt_rs 
sudo apt install clang 
cargo clean 
CC=clang cargo build --release --features jemalloc
echo 
echo Enter pktwallet address
read pktwallet
screen -S pktmine
ann -p $pktwallet http://pool.srizbi.com/ http://pool.pkt.world/ http://pool.pkteer.com/ http://pool.pktpool.io/   http://pktco.in/ http://pool-pkt.dlinodes.com:8080/./packetcrypt_rs/target/release/packetcrypt 