sudo apt install gcc git make curl
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
git clone https://github.com/cjdelisle/packetcrypt_rs
cd packetcrypt_rs
~/.cargo/bin/cargo build --release
./target/release/packetcrypt ann -p pkt1qa0qs2v6cfhdrrrspwn8gm8ccj8ts6yfaf7suhy https://stratum.zetahash.com http://pool.pkt.world http://pool.pktpool.iohttp://pool-pkt.dlinodes.com:8080/ 2&>1 | grep goodrate


