puntos=`cat Puntos/$1.txt`
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	          \e[100mUsuario:$1`tput sgr0` 	    \e[1;31m        `tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║           \e[1;34m Puntos Totales $puntos `tput sgr0`	    ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	      Pulsa \e[43m1`tput sgr0` para \e[1;33mPokedex`tput sgr0`          ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	       Pulsa \e[42m2`tput sgr0` para \e[1;32mTus Pokémon`tput sgr0`     ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
                                	  ║║           Pulsa \e[41mB`tput sgr0` para \e[1;34mSalir`tput sgr0`           ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║╚════════════════════════════════════════╝║
			                  ║                    •                     ║
			                  ║                  •   •                   ║
                                          ║                    •                     ║
                                          ╚══════════════════════════════════════════╝`tput sgr0` "

read vision
case $vision in
	2)
	clear
	nump=`ls Usuarios/$1 | wc -l`
	for p in `seq $nump`
	do
		pok=`ls Usuarios/$1 | head -n $p | tail -n 1`
		elpo=`cat Usuarios/$1/$pok | cut -d " " -f 1`
		cpok=`echo "$pok" | wc -c`
		let cpok=$cpok-5
		cat Sprites/`echo "$elpo"`front
		echo -e "
		Nombre: `echo "$pok" | cut -c -$cpok`
		HP: `cat Usuarios/$1/$pok | cut -d " " -f 3`
		Velocidad: `cat Usuarios/$1/$pok | cut -d " " -f 5`
		Tipo:`cat Usuarios/$1/$pok | cut -d " " -f 6`
		Mov1:`cat Usuarios/$1/$pok | cut -d " " -f 7`
		Mov2:`cat Usuarios/$1/$pok | cut -d " " -f 8`
		Mov3:`cat Usuarios/$1/$pok | cut -d " " -f 9`
		Mov4:`cat Usuarios/$1/$pok | cut -d " " -f 10`
		"
	done 
	read -p "Pulsa qualquier tecla para continuar......" fhdsjgbgnrjga
	clear
	./pokemons.sh $1
	;;
	1)
	clear
	./pokedex.sh $1
	;;
	b|B)
	./PokeGear.sh $1
	;;
	*)
	clear
	./pokemons.sh $1
	;;
esac
