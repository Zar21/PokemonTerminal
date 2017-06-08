echo "                                                    Bienvenido $1"
sleep 2
clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	          \e[100mMenú Principal`tput sgr0` 	    \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║           Pulsa \e[44m1`tput sgr0` para \e[1;34mBatalla`tput sgr0`	    ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	       Pulsa \e[43m2`tput sgr0` para \e[1;33mPokémons`tput sgr0`        ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	       Pulsa \e[42m3`tput sgr0` para \e[1;32mHabilidades`tput sgr0`     ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
                                	  ║║           Pulsa \e[41m4`tput sgr0` para \e[1;34mTienda`tput sgr0`          ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	       Pulsa \e[46m5`tput sgr0` para \e[1;36mCreditos`tput sgr0`        ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║	       Pulsa \e[45m6`tput sgr0` para \e[1;35mAtrás`tput sgr0`           ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	       Pulsa \e[41m7`tput sgr0` para \e[1;31mSalir`tput sgr0`	    ║║
			                  \e[1;31m║║					    ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║╚════════════════════════════════════════╝║
			                  ║                    •                     ║
			                  ║                  •   •                   ║
                                          ║                    •                     ║
                                          ╚══════════════════════════════════════════╝`tput sgr0` "

#Codigo
read n 
		case $n in
	
	1)
		clear
		./Batalla.sh $1
	;;
	2)
		clear
		./pokemons.sh $1
	;;	
	3)
		clear
		./Movimientos/Movimientos.sh $1
	;;
	4)
		clear
		./Tienda.sh $1
	;;
	5)
		clear
		./creditos.sh $1
	;;	
	6)
		clear
		./Principal.sh $1
	;;
	7)
		clear
		exit
	;;
	*)
		echo -e "                                                     \e[0;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./PokeGear.sh $1
		esac 
		




