clear
echo " "
echo -e "\e[1;35m	  				           	  ▒█░▒█ █▀▀█ █▀▀▄ █▀▀█ 
							  ▒█▀▀█ █▄▄█ █░░█ █▄▄█ 
							  ▒█░▒█ ▀░░▀ ▀▀▀░ ▀░░▀ " 
echo " "
echo " "


echo -e "						     \e[1;35m1.`tput sgr0` Beso Drenaje        \e[1;35mDaño:9`tput sgr0`
						     \e[1;35m2.`tput sgr0` Voz Cautivadora     \e[1;35mDaño:7`tput sgr0`
						     \e[1;35m3.`tput sgr0` Carantoña           \e[1;35mDaño:18`tput sgr0`
						     \e[1;35m4.`tput sgr0` Ataque Lunar        \e[1;35mDaño:20`tput sgr0`
						     \e[1;35m5.`tput sgr0` Brillo Mágico       \e[1;35mDaño:15`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;35m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos3.sh
	;;
esac
