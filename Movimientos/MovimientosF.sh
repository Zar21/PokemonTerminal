clear
echo " "
echo -e "\e[1;31m	  					     ▒█▀▀▀ █░░█ █▀▀ █▀▀▀ █▀▀█ 
						     ▒█▀▀▀ █░░█ █▀▀ █░▀█ █░░█ 
						     ▒█░░░ ░▀▀▀ ▀▀▀ ▀▀▀▀ ▀▀▀▀ 
 `tput sgr0`"

echo " "
echo " "


echo -e "						     \e[1;31m1.`tput sgr0` Ascuas         \e[1;31mDaño:8`tput sgr0`
						     \e[1;31m2.`tput sgr0` Rueda Fuego    \e[1;31mDaño:11`tput sgr0`
						     \e[1;31m3.`tput sgr0` Lanzallamas    \e[1;31mDaño:15`tput sgr0`
						     \e[1;31m4.`tput sgr0` Envite Igneo   \e[1;31mDaño:18`tput sgr0`
						     \e[1;31m5.`tput sgr0` Llamarada      \e[1;31mDaño:20`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[1;31m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos.sh
	;;
esac
