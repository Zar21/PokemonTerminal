echo "                                                    Bienvenido $1"
sleep 2
clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	          \e[100mMenú Principal`tput sgr0`	    \e[1;31m║║`tput sgr0`
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
			                  ║║	       Pulsa \e[46m4`tput sgr0` para \e[1;36mConectar`tput sgr0`        ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║	       Pulsa \e[45m5`tput sgr0` para \e[1;35mAtrás`tput sgr0`           ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	       Pulsa \e[41m6`tput sgr0` para \e[1;31mSalir`tput sgr0`	    ║║
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
		./pokémons.sh $1
	;;	
	3)
		clear
		./habilidades.sh $1
	;;
	4)
		clear
		./conectar.sh $1
	;;	
	5)
		clear
		./Inicio.sh $1
	;;
	6)
		clear
		exit
	;;
	*)
		echo -e "                                                     \e[0;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./PokeGear.sh $1
		esac 
		




