clear
echo " "
echo -e "\e[0;30m	  				       ▒█▀▀▀█ ░▀░ █▀▀▄ ░▀░ █▀▀ █▀▀ ▀▀█▀▀ █▀▀█ █▀▀█ 
					       ░▀▀▀▄▄ ▀█▀ █░░█ ▀█▀ █▀▀ ▀▀█ ░░█░░ █▄▄▀ █░░█ 
					       ▒█▄▄▄█ ▀▀▀ ▀░░▀ ▀▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀░▀▀ ▀▀▀▀ 
 " 
echo " "
echo " "


echo -e "						     \e[0;30m1.`tput sgr0` Pulso Umbrío        \e[0;30mDaño:16`tput sgr0`
						     \e[0;30m2.`tput sgr0` Mordisco            \e[0;30mDaño:6`tput sgr0`
						     \e[0;30m3.`tput sgr0` Tajo Umbrío         \e[0;30mDaño:14`tput sgr0`
						     \e[0;30m4.`tput sgr0` Juego Sucio         \e[0;30mDaño:19`tput sgr0`
						     \e[0;30m5.`tput sgr0` Alarido             \e[0;30mDaño:10`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;30m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos4.sh
	;;
esac
