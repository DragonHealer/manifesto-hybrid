#!/bin/bash
echo "Cypherpunk Manifesto – Hybrid Inscription"
echo "=================================================="
echo "1. Creating OP_RETURN parent (80-byte root)..."
MANIFESTO_HASH=$(sha256sum manifesto.html | cut -d' ' -f1)
PAYLOAD="00484963687068657270756e6b5f76315f647261676f6e6865616c6572$MANIFESTO_HASH"
echo "   OP_RETURN hex (copy this):"
echo "   $PAYLOAD"
echo "   → Paste into Sparrow / UniSat as OP_RETURN (any amount < 546 sats)"
echo ""
echo "2. Inscribing full HTML reveal..."
ord wallet inscribe --fee-rate 15 --file manifesto.html --content-type text/html
