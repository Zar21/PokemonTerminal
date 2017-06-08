clear
echo " "
echo -e "\e[2;36m	  				           ▒█░░▒█ █▀▀█ █░░ █▀▀█ █▀▀▄ █▀▀█ █▀▀█ 
						   ░▒█▒█░ █░░█ █░░ █▄▄█ █░░█ █░░█ █▄▄▀ 
						   ░░▀▄▀░ ▀▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀░ ▀▀▀▀ ▀░▀▀ " 
echo " "
echo " "


echo -e "						     \e[2;36m1.`tput sgr0` Golpe Aereo         \e[2;36mDaño:9`tput sgr0`
						     \e[2;36m2.`tput sgr0` Vendaval            \e[2;36mDaño:17`tput sgr0`
						     \e[2;36m3.`tput sgr0` Ataque Ala          \e[2;36mDaño:8`tput sgr0`
						     \e[2;36m4.`tput sgr0` Pajaro Osado        \e[2;36mDaño:19`tput sgr0`
						     \e[2;36m5.`tput sgr0` Ataque Aereo        \e[2;36mDaño:26`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[2;36m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos3.sh
	;;
esac
