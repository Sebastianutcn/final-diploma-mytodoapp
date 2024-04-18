#!/bin/bash

# Verificăm dacă serviciul Node.js este în execuție folosind PM2
if pm2 list | grep -q "index.js"; then
    # Dacă serviciul este în execuție, îl vom opri folosind PM2
    pm2 stop index.js
    echo "Serviciul Node.js a fost oprit cu succes folosind PM2."
else
    echo "Serviciul Node.js nu este în execuție. Nu este necesar să fie oprit."
fi
