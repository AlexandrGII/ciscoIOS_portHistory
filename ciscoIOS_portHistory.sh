ssh -o StrictHostKeyChecking=no -l $USER $IP_ADDR "show int | i line proto|Last input" | awk '{key=$0; getline; print key " " $0;}' | cut -d' ' -f1,8,14,16  --output-delimiter=',' | grep notconnect
