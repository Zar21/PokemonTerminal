clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	            \e[100mHabilidades`tput sgr0`	            \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║                 \e[0;30m1.Siniestro`tput sgr0`            ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	             \e[2;35m2.Psiquico`tput sgr0`             ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	             \e[0;32m3.Lucha`tput sgr0`                ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	             \e[0m4.Fantasma`tput sgr0`             ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║        Pulsa \e[1;33m+`tput sgr0` para \e[1;33mSiguiente pág.`tput sgr0`     ║║
			                  ║║					    ║║
			                  ║║	        Pulsa \e[45m5`tput sgr0` para \e[1;35mAtrás`tput sgr0`          ║║
			                  ║║	       	                            ║║ 
			                  \e[1;31m║║`tput sgr0`	        Pulsa \e[41m6`tput sgr0` para \e[1;31mSalir`tput sgr0`          \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					    \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`         Pulsa \e[1;33m-`tput sgr0` para \e[1;33mAnterior pág.`tput sgr0`     \e[1;31m║║`tput sgr0`
			                  \e[1;31m║╚════════════════════════════════════════╝║
			                  ║                    •                     ║
			                  ║                  •   •                   ║
                                          ║                    •                     ║
                                          ╚══════════════════════════════════════════╝`tput sgr0` "

read n
	case $n in
 
	1)
		clear
		./Movimientos/MovimientosS.sh
	;;
	2)
		clear
		./Movimientos/MovimientosPs.sh
	;;
	3)
		clear
		./Movimientos/MovimientosL.sh
	;;
	4)
		clear
		./Movimientos/MovimientosFan.sh
	;;
	+)
		clear
		./Movimientos/Movimientos5.sh
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
	-)	clear
		./Movimientos/Movimientos3.sh
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./Movimientos4.sh
	;;
		esac 
