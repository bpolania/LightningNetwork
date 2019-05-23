# LightningNetwork

This is a specification to install a Lightning Netwrok server/wallet configutation, it's based on the following [article](https://medium.com/@bitstein/setting-up-a-bitcoin-lightning-network-test-environment-ab967167594a)

The general idea is:

* Set a `bitcoin` node

* Set a `lightning network node` that uses the `bitcoin` node

* Set a wallet in the `lightning network node` you created

It assumes you have the Bitcoin Core Daemon (`bitcoind`) and the Bitcoin Command Line interface `bitcoin-cli` installed, follow the following instructions to install them.

### bitcoind

* Download the `.tar` file:
`curl -O https://bitcoin.org/bin/bitcoin-core-0.18.0/bitcoin-0.18.0-osx64.tar.gz`

* Extract the file `.tar` file:
`tar -zxf bitcoin-0.18.0-osx64.tar.gz`

* Move the executables into your default path to make running and stopping bitcoind easier, note that it may be necessary to use sudo to perform these commands since it will modify directories owned by root:
```
sudo mkdir -p /usr/local/bin
sudo cp bitcoin-0.18.0/bin/bitcoin* /usr/local/bin/.
```

* clean the `.tar` file:
`rm -rf bitcoin-0.18.0*`


For the latest version of the daemon, release signatures verification anb more information visit the [following link](https://bitcoin.org/en/full-node#osx-daemon)

### bitcoin-cli (Bitcoin Core)

The bitcoin-cli comes with the Bitcoin Core, install it using the following [instructions](https://bitcoin.org/en/full-node#possible-problems)

### lnd

Install `lnd` using the instructions in the `.readme` file of its [github repo](https://github.com/lightningnetwork/lnd/blob/master/docs/INSTALL.md)

## Installation

* In order to get this running, there are a series of folders, aliases and exports that need to be created, the `bash_profile` file in the repo will take care of the `exports` and the `aliases`, bu the following folders need to be created:

```
$ mkdir ~/app-container
$ mkdir ~/app-container/.bitcoin
$ mkdir ~/app-container/.lnd
$ mkdir ~/app-container/.lnd2
```

* Then, as described in the article, the following configuration files (`.conf`) files must be created:

in `.bitcoin` folder create `bitcoin.conf`
in `.lnd` folder create `lnd.conf`
in `.lnd2` folder create `lnd.conf`

All the three files are included in repo

* You can run the whole setup following the instructions in the article mentioned [above](https://medium.com/@bitstein/setting-up-a-bitcoin-lightning-network-test-environment-ab967167594a), in case the article is taken out in the future, a `.pdf` version has been included in the repo. 

