clear
echo " "
echo "						▒█▄░▒█ █▀▀█ █▀▀█ █▀▄▀█ █▀▀█ █░░ 
						▒█▒█▒█ █░░█ █▄▄▀ █░▀░█ █▄▄█ █░░ 
						▒█░░▀█ ▀▀▀▀ ▀░▀▀ ▀░░░▀ ▀░░▀ ▀▀▀ "

echo " "
echo " "


echo -e "						     1. Placaje        Daño:5`tput sgr0`
						     2. Cabezazo       Daño:7`tput sgr0`
						     3. Arañazo        Daño:5`tput sgr0`
						     4. HiperRayo      Daño:28`tput sgr0`
						     5. GolpeCuerpo    Daño:15`tput sgr0` "
echo " "
echo " "
echo -e "Presiona - para volver atras"
read n

case $n in

	*)
		clear
		./Movimientos/Movimientos.sh
	;;
esac
