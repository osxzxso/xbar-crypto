#!/bin/bash

# Shows APE price in USD.
#
# <xbar.title>APE USD</xbar.title>
# <xbar.version>2.1.7</xbar.version>
# <xbar.author>osxzxso</xbar.author>
# <xbar.author.github>osxzxso</xbar.author.github>
# <xbar.desc>Shows APE price in USD.</xbar.desc>
# <xbar.image></xbar.image>
#
# by osxzxso

echo -n "APE $"; curl -s "https://api.coinbase.com/v2/prices/APE-USD/spot" | tr -d '"' | awk -F'amount:' '{print $2}' | cut -c -5