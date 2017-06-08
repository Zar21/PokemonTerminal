clear
echo " "
echo -e "\e[2;35m	  				          ▒█▀▀█ █▀▀ ░▀░ █▀▀█ █░░█ ░▀░ █▀▀ █▀▀█ 
						  ▒█▄▄█ ▀▀█ ▀█▀ █░░█ █░░█ ▀█▀ █░░ █░░█ 
						  ▒█░░░ ▀▀▀ ▀▀▀ ▀▀▀█ ░▀▀▀ ▀▀▀ ▀▀▀ ▀▀▀▀ " 
echo " "
echo " "


echo -e "						     \e[2;35m1.`tput sgr0` Cabezazo Zen         \e[2;35mDaño:13`tput sgr0`
						     \e[2;35m2.`tput sgr0` Confusión            \e[2;35mDaño:7`tput sgr0`
						     \e[2;35m3.`tput sgr0` Psíquico             \e[2;35mDaño:17`tput sgr0`
						     \e[2;35m4.`tput sgr0` Psicocorte           \e[2;35mDaño:11`tput sgr0`
						     \e[2;35m5.`tput sgr0` Psicocarga           \e[2;35mDaño:19`tput sgr0` "
echo " "
echo " "
echo -e "Presiona \e[2;35m-`tput sgr0` para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos4.sh
	;;
esac
