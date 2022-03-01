#!/bin/bash

# Installing AWS Inspector on Linux based EC2 instances
wget https://inspector-agent.amazonaws.com/linux/latest/install
sudo bash install

# File Verification
FILE=("libcurl4" "libcurl3" "libgcc1" "libc6" "libstdc++6" "libssl1.0.1" "libssl1.0.2" "libssl1.1" "libpcap0.8")
if [ -f "$FILE" ]; then 
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
fi 
