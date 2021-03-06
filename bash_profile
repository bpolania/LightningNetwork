export BITSTEIND_DIR="$HOME/app-container/.bitcoin"
export LND1_DIR="/Users/raf01373/Documents/Development/Lightning/app-container/.lnd"
export LND2_DIR="/Users/raf01373/Documents/Development/Lightning/app-container/.lnd2"

alias bitsteind="bitcoind -datadir=$BITSTEIND_DIR"
alias bitstein-cli="bitcoin-cli -datadir=$BITSTEIND_DIR"

alias lnd1="$GOPATH/bin/lnd --lnddir=$LND1_DIR";
alias lncli1="$GOPATH/bin/lncli -n regtest --lnddir=$LND1_DIR"
alias lnd2="$GOPATH/bin/lnd --lnddir=$LND2_DIR";
alias lncli2="$GOPATH/bin/lncli -n regtest --lnddir=$LND2_DIR --rpcserver=localhost:11009"
