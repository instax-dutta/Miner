echo ####################################################################################
echo            Welcome to the most advanced PKT MINER script ever
echo
echo                  this script is still in development
echo
echo                   please report any bugs to the author
echo
echo note : do run the script as root user and inside a screen if doing in a vps/server
echo
echo First this script will compile the miner script
echo
echo secondly start the miner with you wallet address and desired threads count
echo
echo thirdly the script will get only the good rates and ke/s so say no to annoying error msgs and stuff
echo
echo thanks for reading lets make the difficult thing most easy for you !
echo #####################################################################################
echo  .........
echo  ...........
echo  ..............
read -p "Enter your wallet address: " WALLET
read -p "How many Threads you want to give to the miner ?" THREAD
read -p "Do you want to continue compiling the miner ? [y/n]" choice
if [ "${choice}" == "y" ]; then
    echo "Compiling the miner..."
    sudo apt install gcc git make curl
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    git clone https://github.com/cjdelisle/packetcrypt_rs
    cd packetcrypt_rs
    ~/.cargo/bin/cargo build --release
    echo "completed compiling the miner !!"
    read -p "Do you want to start the miner ? [y/n]" choice1
    if [ "${choice1}" == "y" ]; then
        echo "Starting the miner..."
        ./target/release/packetcrypt ann -p ${WALLET} http://pool.pkt.world/ http://pool.chymera.it/ http://pool.pktpool.io/ http://pktco.in/ http://pool.pkteer.com/ http://pool-pkt.dlinodes.com/ -t${THREAD} 2&>1 | grep goodrate 
    else
        echo "Exiting..."
    fi
else
    echo "Exiting..."
fi

