random=`echo $(($RANDOM%501))`
let random=$random+5001
echo "$random" > Numero.sh
echo "Introduce es siguiente comando: nc 192.168.28.25 $random"
