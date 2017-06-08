clear
echo " "
echo -e "\e[1;36m	  				             ▒█░▒█ ░▀░ █▀▀ █░░ █▀▀█ 
						     ▒█▀▀█ ▀█▀ █▀▀ █░░ █░░█ 
						     ▒█░▒█ ▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀  
`tput sgr0`"

echo " "
echo " "


echo -e "						     \e[1;36m1.`tput sgr0` Nieve Polvo      \e[1;36mDaño:2`tput sgr0`
						     \e[1;36m2.`tput sgr0` Rayo Hielo       \e[1;36mDaño:15`tput sgr0`
						     \e[1;36m3.`tput sgr0` Vaho Gelido      \e[1;36mDaño:9`tput sgr0`
						     \e[1;36m4.`tput sgr0` Liofulizacion    \e[1;36mDaño:13`tput sgr0`
						     \e[1;36m5.`tput sgr0` Ventisca         \e[1;36mDaño:20`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;36m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos2.sh
	;;
esac
