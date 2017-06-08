clear
echo -e "			                  \e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
			                  \e[1;31m║               \e[2;34m  PokeGear`tput sgr0`                 \e[1;31m║`tput sgr0`
			                 \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
			                  \e[1;31m║║					    ║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`	         \e[100mLista de Pokémon`tput sgr0`	    \e[1;31m║║`tput sgr0`
			                  \e[1;31m║║`tput sgr0`					 \e[1;31m   ║║`tput sgr0`
			                  ║║					    ║║
			                  ║║               1.\e[1;32mBulbasaur`tput sgr0`	            ║║
			                  ║║					    ║║
			                  ║║					    ║║
			                  ║║	           2.\e[1;32mCaterpie`tput sgr0`               ║║
			                  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           3.\e[1;31mCharizard`tput sgr0`              ║║
			                  ║║					    ║║
			                  ║║	  	                            ║║
			                  ║║	           4.\e[1;31mChimchar`tput sgr0`               ║║
			                  ║║	  	                            ║║
			                  ║║					    ║║
			                  ║║	           5.\e[1;34mGyarados`tput sgr0`               ║║
			                  ║║		 			    ║║
			                  ║║					    ║║
			                  ║║	           6.\e[1;34mPiplup`tput sgr0`	            ║║
					  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           7.\e[1;33mPikachu`tput sgr0`                ║║
					  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           8.\e[1;36mStaraptor`tput sgr0`              ║║
					  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           9.\e[1;32mMarcianito`tput sgr0`             ║║
					  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           10.\e[1;33mAtrás`tput sgr0`                 ║║
					  ║║	 	                            ║║
			                  ║║		    		            ║║
			                  ║║	           11.\e[1;34mSalir`tput sgr0`                 ║║
			                  \e[1;31m║║					    ║║
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
		cat Pokedex/bulbasaur
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	2)
		clear
		cat Pokedex/caterpie
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1	
	;;
	3)
		clear
		cat Pokedex/charizard
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	4)
		clear 
		cat Pokedex/chimchar
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	5)
		clear 
		cat Pokedex/gyarados
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	6)
		clear 
		cat Pokedex/piplup
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	7)
		clear 
		cat Pokedex/pikachu
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	8)
		clear 
		cat Pokedex/staraptor
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
	;;
	9)
		clear 
		cat Pokedex/marcianito
		read -p "Pulsa A para continuar" aA
		./pokedex.sh $1
		
	;;
	10)
		clear 
		./pokemons.sh $1                                 
	;;
	11)
		clear 
		./pokemons.sh $1                                  
	;;
	*)
		echo -e "                                                     \e[1;91mOpción incorrecta!`tput sgr0`"
		sleep 1s;clear
		./pokedex.sh $1
		esac 
