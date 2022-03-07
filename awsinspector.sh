#!/bin/bash

# Set sudo super user
sudo su -

# Installing AWS Inspector on Linux based EC2 instances
wget https://inspector-agent.amazonaws.com/linux/latest/install
bash install

# File Verification
FILE=("libcurl4" "libcurl3" "libgcc1" "libc6" "libstdc++6" "libssl1.0.1" "libssl1.0.2" "libssl1.1" "libpcap0.8")
if [ -f "$FILE" ]; then 
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
fi 


INSTALLER= $(aws s3 cp s3://resilient-dev-falcon-installer/ /home/ec2-user )
if [ -f "$INSTALLER"]; then 
    cd /home/ec2-user
    chmod u+x install
    ./install
else 
    "$INSTALLER" > output.txt
    mkdir home/ec2-user/falcon
    mv output.txt home/ec2-user/falcon
fi




