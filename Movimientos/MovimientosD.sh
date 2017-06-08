clear
echo " "
echo -e "\e[1;35m	  				                ▒█▀▀▄ █▀▀█ █▀▀█ █▀▀▀ █▀▀█ █▀▀▄ 
							▒█░▒█ █▄▄▀ █▄▄█ █░▀█ █░░█ █░░█ 
							▒█▄▄▀ ▀░▀▀ ▀░░▀ ▀▀▀▀ ▀▀▀▀ ▀░░▀ "
echo " "
echo " "


echo -e "						     \e[1;35m1.`tput sgr0` Dragoaliento       \e[1;35mDaño:8`tput sgr0`
						     \e[1;35m2.`tput sgr0` Cola Dragón        \e[1;35mDaño:13`tput sgr0`
						     \e[1;35m3.`tput sgr0` Pulso Dragón       \e[1;35mDaño:17`tput sgr0`
						     \e[1;35m4.`tput sgr0` Garra Dragón       \e[1;35mDaño:19`tput sgr0`
						     \e[1;35m5.`tput sgr0` Cometa Draco       \e[1;35mDaño:27`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;35m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos5.sh
	;;
esac
