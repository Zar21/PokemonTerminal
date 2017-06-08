clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	            \e[100mHabilidades`tput sgr0`	            \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║                 \e[0;37m1.Acero`tput sgr0`                ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	             \e[2;36m2.Volador`tput sgr0`              ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	             \e[0;33m3.Roca`tput sgr0`                 ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	             \e[1;35m4.Hada`tput sgr0`                 ║║
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
		./Movimientos/MovimientosAc.sh
	;;
	2)
		clear
		./Movimientos/MovimientosVol.sh
	;;
	3)
		clear
		./Movimientos/MovimientosR.sh
	;;
	4)
		clear
		./Movimientos/MovimientosHa.sh
	;;
	+)
		clear
		./Movimientos/Movimientos4.sh
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
		./Movimientos/Movimientos2.sh
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./Movimientos/Movimientos3.sh
	;;
		esac 
