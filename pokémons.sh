echo
echo -e "                                                   Pulsa \e[1;32m1`tput sgr0` para ver la lista de Pokémon"
echo
echo -e "                                                   Pulsa \e[1;34m2`tput sgr0` para ver las habilidades de los Pokémon"
echo
echo -e "                                                   Pulsa \e[1;36m4`tput sgr0` para volver atrás"
echo
echo -e "                                                   Pulsa \e[1;31m5`tput sgr0` para salir"

read n 
		case $n in 
	a|A)
		clear
		./listapokemon.sh
	;;
	b|B)
		clear
		./habilidades.sh
	;;
	c|C)
		clear
		./conectar.sh
	;;
	d|D)
		clear 
		./Menu.sh
	;;
	e|E)
		clear 
		exit                                   
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./conectar.sh
		esac 
