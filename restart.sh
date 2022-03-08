echo ahh there we go again ! lets restart mining
echo make sure you running this inside the Miner Folder !
read -p "Enter your wallet address: " WALLET
read -p "How many Threads you want to give to the miner ?" THREAD
read -p "Enter the pool order you want to use : " POOL
echo "Starting the miner..."
cd packetcrypt_rs
./target/release/packetcrypt ann -p ${WALLET} ${POOL} -t${THREAD} 2&>1 | grep goodrate
