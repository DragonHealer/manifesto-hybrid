#!/bin/bash
echo "HYBRID CYPHERPUNK MANIFESTO MINT — LIVE"
echo "=================================================="

# 1. OP_RETURN parent (80-byte root) — Mac version
HASH=$(shasum -a 256 manifesto.html | awk '{print $1}')
PAYLOAD="00484963687068657270756e6b5f76315f647261676f6e6865616c6572$HASH"

echo "1. OP_RETURN PARENT HEX (copy this):"
echo "   $PAYLOAD"
echo "   → Open Sparrow / UniSat / Leather"
echo "   → Add OP_RETURN output → paste hex → amount < 546 sats → broadcast"
echo ""

read -p "Paste the confirmed PARENT TXID here → " PARENT_TXID
echo "Parent recorded: $PARENT_TXID"

# 2. Inscribe the golden dragon as the first child reveal
echo ""
echo "2. Inscribing your golden dragon as child reveal..."
ord wallet inscribe --fee-rate 20 --file placeholder-reveal.png --content-type image/png

echo ""
echo "DONE. First Hybrid Cypherpunk Manifesto + Dragon is now on-chain forever."
echo "Parent TXID: $PARENT_TXID"
echo "Dragon Reveal ID: (copy from ord output above)"
