clear
echo " "
echo -e "\e[1;32m	  					     ▒█▀▀█ █░░ █▀▀█ █▀▀▄ ▀▀█▀▀ █▀▀█ 
						     ▒█▄▄█ █░░ █▄▄█ █░░█ ░░█░░ █▄▄█ 
						     ▒█░░░ ▀▀▀ ▀░░▀ ▀░░▀ ░░▀░░ ▀░░▀ 
 `tput sgr0`"

echo " "
echo " "


echo -e "						     \e[1;32m1.`tput sgr0` Latigo Cepa        \e[1;32mDaño:3`tput sgr0`
						     \e[1;32m2.`tput sgr0` Gigadrenado        \e[1;32mDaño:14`tput sgr0`
						     \e[1;32m3.`tput sgr0` Rayo Solar         \e[1;32mDaño:22`tput sgr0`
						     \e[1;32m4.`tput sgr0` Bomba Germen       \e[1;32mDaño:17`tput sgr0`
						     \e[1;32m5.`tput sgr0` LlueveHojas        \e[1;32mDaño:19`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;32m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos.sh
	;;
esac
