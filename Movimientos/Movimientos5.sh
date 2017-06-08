clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	            \e[100mHabilidades`tput sgr0`	            \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║                 \e[2;32m1.Bicho`tput sgr0`                ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	             \e[1;35m2.Dragón`tput sgr0`               ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	                                    ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	                                    ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║        Pulsa \e[1;33m-`tput sgr0` para \e[1;33mAnterior pág.`tput sgr0`      ║║
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
		./Movimientos/MovimientosB.sh
	;;
	2)
		clear
		./Movimientos/MovimientosD.sh
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
		./Movimientos/Movimientos4.sh
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./Movimientos/Movimientos5.sh
	;;
		esac 
