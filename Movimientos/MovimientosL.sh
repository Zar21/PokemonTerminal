clear
echo " "
echo -e "\e[0;32m	  				                 ▒█░░░ █░░█ █▀▀ █░░█ █▀▀█ 
							 ▒█░░░ █░░█ █░░ █▀▀█ █▄▄█ 
							 ▒█▄▄█ ░▀▀▀ ▀▀▀ ▀░░▀ ▀░░▀ " 
echo " "
echo " "


echo -e "						     \e[0;32m1.`tput sgr0` Demolición            \e[0;32mDaño:10`tput sgr0`
						     \e[0;32m2.`tput sgr0` Ultrapuño             \e[0;32mDaño:8`tput sgr0`
						     \e[0;32m3.`tput sgr0` Golpe Roca            \e[0;32mDaño:6`tput sgr0`
						     \e[0;32m4.`tput sgr0` Gancho Alto           \e[0;32mDaño:16`tput sgr0`
						     \e[0;32m5.`tput sgr0` A Bocajarro           \e[0;32mDaño:23`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[0;32m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos4.sh
	;;
esac
