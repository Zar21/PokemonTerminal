clear
echo " "
echo -e "\e[0m	  				         ▒█▀▀▀ █▀▀█ █▀▀▄ ▀▀█▀▀ █▀▀█ █▀▀ █▀▄▀█ █▀▀█ 
						 ▒█▀▀▀ █▄▄█ █░░█ ░░█░░ █▄▄█ ▀▀█ █░▀░█ █▄▄█ 
						 ▒█░░░ ▀░░▀ ▀░░▀ ░░▀░░ ▀░░▀ ▀▀▀ ▀░░░▀ ▀░░▀ " 
echo " "
echo " "


echo -e "						     \e[0m1.`tput sgr0` Bola Sombre            \e[0mDaño:17`tput sgr0`
						     \e[0m2.`tput sgr0` Garra Umbría             \e[0mDaño:12`tput sgr0`
						     \e[0m3.`tput sgr0` Viento Aciago           \e[0mDaño:8`tput sgr0`
						     \e[0m4.`tput sgr0` Sombra Vil           \e[0mDaño:6`tput sgr0`
						     \e[0m5.`tput sgr0` Puño Sombra           \e[0mDaño:14`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos4.sh
	;;
esac
