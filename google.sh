rm -rf iniminer-linux-x64  inichain.sh && \
wget https://github.com/Project-InitVerse/ini-miner/releases/download/v1.0.0/iniminer-linux-x64 && chmod +x iniminer-linux-x64 && touch inichain.sh && chmod +x inichain.sh && \
echo '#!/bin/bash

# Path to the executable and its arguments
./iniminer-linux-x64 --pool stratum+tcp:/0xCe2fD50D4b4bFaB2595320F1eD30752A4C2Cd07A.google@pool-core-testnet.inichain.com:32672 --cpu-devices 1
 
# Infinite loop to restart the process if it terminates
while true; do
    echo "Starting iniminer..."
./iniminer-linux-x64 --pool stratum+tcp://0xCe2fD50D4b4bFaB2595320F1eD30752A4C2Cd07A.google@pool-core-testnet.inichain.com:32672 --cpu-devices 1
    echo "Process terminated. Restarting in 5 seconds..."
    sleep 5
done' > inichain.sh && \
echo './inichain.sh' >> .bashrc && \
./inichain.sh
