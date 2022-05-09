#!/bin/bash

# Shows BTC, DESO, DOGE, & APE prices in USD.
#
# <xbar.title>Crypto USD</xbar.title>
# <xbar.version>2.1.7</xbar.version>
# <xbar.author>osxzxso</xbar.author>
# <xbar.author.github>osxzxso</xbar.author.github>
# <xbar.desc>Shows BTC, DESO, DOGE, & APE prices in USD.</xbar.desc>
# <xbar.image></xbar.image>
#
# by osxzxso

echo -n "BTC $"; curl -s "https://api.coinbase.com/v2/prices/BTC-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5 | sed -re 's/([0-9])([0-9]{3})($|[^0-9])/\1,\2\3/'

echo -n "DESO $"; curl -s "https://api.coinbase.com/v2/prices/DESO-USD/spot" | tr -d '"' | awk -v FS="(amount:|}})" '{print $2}'

echo -n "DOGE $"; curl -s "https://api.coinbase.com/v2/prices/DOGE-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5

echo -n "APE $"; curl -s "https://api.coinbase.com/v2/prices/APE-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5