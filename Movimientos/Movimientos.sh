clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	            \e[100mHabilidades`tput sgr0`	            \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║                 \e[0m1.Normal`tput sgr0`               ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	             \e[1;31m2.Fuego`tput sgr0`                ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	             \e[1;34m3.Agua`tput sgr0`                 ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	             \e[1;32m4.Planta`tput sgr0`               ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║        Pulsa \e[1;33m+`tput sgr0` para \e[1;33mSiguiente pág.`tput sgr0`     ║║
			                  ║║					    ║║
			                  ║║	        Pulsa \e[45m5`tput sgr0` para \e[1;35mAtrás`tput sgr0`          ║║
			                  ║║	       	                            ║║ 
			                  \e[1;31m║║`tput sgr0`	        Pulsa \e[41m6`tput sgr0` para \e[1;31mSalir`tput sgr0`          \e[1;31m║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║╚════════════════════════════════════════╝║
			                  ║                    •                     ║
			                  ║                  •   •                   ║
                                          ║                    •                     ║
                                          ╚══════════════════════════════════════════╝`tput sgr0` "
read n
	case $n in
 
	1)
		clear
		./Movimientos/MovimientosN.sh
	;;
	2)
		clear
		./Movimientos/MovimientosF.sh
	;;
	3)
		clear
		./Movimientos/MovimientosA.sh
	;;
	4)
		clear
		./Movimientos/MovimientosP.sh
	;;
	+)
		clear
		./Movimientos/Movimientos2.sh
	;;
	5)
		cd ..
		clear
		./../PokeGear.sh
	;;
	6)
		clear
		exit
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./Movimientos/Movimientos.sh
	;;
		esac 
