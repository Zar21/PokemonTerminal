clear
echo " "
echo -e "\e[0;37m	  				                ░█▀▀█ █▀▀ █▀▀ █▀▀█ █▀▀█ 
							▒█▄▄█ █░░ █▀▀ █▄▄▀ █░░█ 
							▒█░▒█ ▀▀▀ ▀▀▀ ▀░▀▀ ▀▀▀▀ 
"
echo " "
echo " "


echo -e "						     \e[0;37m1.`tput sgr0` Puño Bala           \e[0;37mDaño:9`tput sgr0`
						     \e[0;37m2.`tput sgr0` Puño Meteoro        \e[0;37mDaño:12`tput sgr0`
						     \e[0;37m3.`tput sgr0` Giro Bola           \e[0;37mDaño:6`tput sgr0`
						     \e[0;37m4.`tput sgr0` Garra Metal         \e[0;37mDaño:7`tput sgr0`
						     \e[0;37m5.`tput sgr0` Cabeza Hierro        \e[0;37mDaño:14`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;37m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos3.sh
	;;
esac
