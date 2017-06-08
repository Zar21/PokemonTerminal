clear
echo " "
echo -e "\e[0;33m	  				           	  ▒█▀▀█ █▀▀█ █▀▀ █▀▀█ 
							  ▒█▄▄▀ █░░█ █░░ █▄▄█ 
							  ▒█░▒█ ▀▀▀▀ ▀▀▀ ▀░░▀ " 
echo " "
echo " "


echo -e "						     \e[0;33m1.`tput sgr0` Lanzarocas        \e[0;33mDaño:6`tput sgr0`
						     \e[0;33m2.`tput sgr0` Avalancha         \e[0;33mDaño:13`tput sgr0`
						     \e[0;33m3.`tput sgr0` Roca Afilada      \e[0;33mDaño:19`tput sgr0`
						     \e[0;33m4.`tput sgr0` Tumba Rocas       \e[0;33mDaño:9`tput sgr0`
						     \e[0;33m5.`tput sgr0` Testarazo         \e[0;33mDaño:30`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;33m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos3.sh
	;;
esac
