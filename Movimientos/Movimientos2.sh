clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	            \e[100mHabilidades`tput sgr0`	            \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║                 \e[1;33m1.Eléctrico`tput sgr0`            ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	             \e[0;33m2.Tierra`tput sgr0`               ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	             \e[1;36m3.Hielo`tput sgr0`                ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	             \e[0;35m4.Veneno`tput sgr0`               ║║
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
		./Movimientos/MovimientosE.sh
	;;
	2)
		clear
		./Movimientos/MovimientosT.sh
	;;
	3)
		clear
		./Movimientos/MovimientosH.sh
	;;
	4)
		clear
		./Movimientos/MovimientosV.sh
	;;
	+)
		clear
		./Movimientos/Movimientos3.sh
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
		./Movimientos/Movimientos.sh
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./Movimientos/Movimientos2.sh
	;;
		esac 
