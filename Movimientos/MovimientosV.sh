clear
echo " "
echo -e "\e[0;35m	  				             ▒█░░▒█ █▀▀ █▀▀▄ █▀▀ █▀▀▄ █▀▀█ 
						     ░▒█▒█░ █▀▀ █░░█ █▀▀ █░░█ █░░█ 
						     ░░▀▄▀░ ▀▀▀ ▀░░▀ ▀▀▀ ▀░░▀ ▀▀▀▀ 

`tput sgr0`"

echo " "
echo " "


echo -e "						     \e[0;35m1.`tput sgr0` Picotazoven       \e[0;35mDaño:2`tput sgr0`
						     \e[0;35m2.`tput sgr0` Puya Nociba       \e[0;35mDaño:16`tput sgr0`
						     \e[0;35m3.`tput sgr0` Acido             \e[0;35mDaño:8`tput sgr0`
						     \e[0;35m4.`tput sgr0` Carga Toxica      \e[0;35mDaño:15`tput sgr0`
						     \e[0;35m5.`tput sgr0` Lanza Mugre       \e[0;35mDaño:19`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;35m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos2.sh
	;;
esac
