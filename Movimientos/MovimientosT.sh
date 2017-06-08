clear
echo " "
echo -e "\e[0;33m	  				           ▀▀█▀▀ ░▀░ █▀▀ █▀▀█ █▀▀█ █▀▀█ 
						   ░▒█░░ ▀█▀ █▀▀ █▄▄▀ █▄▄▀ █▄▄█ 
						   ░▒█░░ ▀▀▀ ▀▀▀ ▀░▀▀ ▀░▀▀ ▀░░▀ 
`tput sgr0`"

echo " "
echo " "


echo -e "						     \e[0;33m1.`tput sgr0` Disparo Lodo   \e[0;33mDaño:4`tput sgr0`
						     \e[0;33m2.`tput sgr0` Bofeton Lodo   \e[0;33mDaño:6`tput sgr0`
						     \e[0;33m3.`tput sgr0` Excabar        \e[0;33mDaño:17`tput sgr0`
						     \e[0;33m4.`tput sgr0` Tierra Viva    \e[0;33mDaño:19`tput sgr0`
						     \e[0;33m5.`tput sgr0` Terremoto      \e[0;33mDaño:25`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;33m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos2.sh
	;;
esac
