clear
echo " "
echo -e "\e[1;33m	  				       ▒▒█▀▀▀ █░░ █▀▀ █▀▀ ▀▀█▀▀ █▀▀█ ░▀░ █▀▀ █▀▀█ 
						▒█▀▀▀ █░░ █▀▀ █░░ ░░█░░ █▄▄▀ ▀█▀ █░░ █░░█ 
						▒█▄▄▄ ▀▀▀ ▀▀▀ ▀▀▀ ░░▀░░ ▀░▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀ 
 `tput sgr0`"

echo " "
echo " "


echo -e "						     \e[1;33m1.`tput sgr0` Impactrueno        \e[1;33mDaño:3`tput sgr0`
						     \e[1;33m2.`tput sgr0` Rayo               \e[1;33mDaño:10`tput sgr0`
						     \e[1;33m3.`tput sgr0` Carga Parabola     \e[1;33mDaño:13`tput sgr0`
						     \e[1;33m4.`tput sgr0` Electro Tela       \e[1;33mDaño:7`tput sgr0`
						     \e[1;33m5.`tput sgr0` Electro Cañon      \e[1;33mDaño:18`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;33m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos2.sh
	;;
esac
