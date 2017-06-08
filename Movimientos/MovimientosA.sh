clear
echo " "
echo -e "\e[1;34m	  					       ░█▀▀█ █▀▀▀ █░░█ █▀▀█ 
						       ▒█▄▄█ █░▀█ █░░█ █▄▄█ 
						       ▒█░▒█ ▀▀▀▀ ░▀▀▀ ▀░░▀ 

 `tput sgr0`"

echo " "
echo " "


echo -e "						     \e[1;34m1.`tput sgr0` Pistola Agua      \e[1;34mDaño:6`tput sgr0`
						     \e[1;34m2.`tput sgr0` Acua Jet          \e[1;34mDaño:9`tput sgr0`
						     \e[1;34m3.`tput sgr0` Hidropropulsor    \e[1;34mDaño:11`tput sgr0`
						     \e[1;34m4.`tput sgr0` Acua Cola         \e[1;34mDaño:14`tput sgr0`
						     \e[1;34m5.`tput sgr0` Hidrobomba        \e[1;34mDaño:19`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;34m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos.sh
	;;
esac
