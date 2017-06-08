clear
echo " "
echo -e "\e[2;32m	  				                ▒█▀▀█ ░▀░ █▀▀ █░░█ █▀▀█ 
							▒█▀▀▄ ▀█▀ █░░ █▀▀█ █░░█ 
							▒█▄▄█ ▀▀▀ ▀▀▀ ▀░░▀ ▀▀▀▀ "
echo " "
echo " "


echo -e "						     \e[2;32m1.`tput sgr0` Chupavidas        \e[2;32mDaño:18`tput sgr0`
						     \e[2;32m2.`tput sgr0` Doble Rayo        \e[2;32mDaño:14`tput sgr0`
						     \e[2;32m3.`tput sgr0` Tijera X          \e[2;32mDaño:16`tput sgr0`
						     \e[2;32m4.`tput sgr0` Zumbido           \e[2;32mDaño:13`tput sgr0`
						     \e[2;32m5.`tput sgr0` Megacuerno        \e[2;32mDaño:22`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[2;32m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos5.sh
	;;
esac
