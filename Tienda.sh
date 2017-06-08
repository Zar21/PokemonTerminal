echo -e "
						\e[0;91m ______      _        _______ _                 _       
						(_____ \    | |      (__   __|_)               | |      
						 _____) )__ | |  _ _____|_|   _ _____ ____   __| |_____ 
						|  ____/ _ \| |_/ ) ___ | |  | | ___ |  _ \ / _  (____ |\e[0m
						| |   | |_| |  _ (| ____| |  | | ____| | | ( (_| / ___ |
						|_|    \___/|_| \_)_____)_|  |_|_____)_| |_|\____\_____|"
echo " "
#!/bin/bash
Random () {
    random=`echo $(($RANDOM%62))`
    poke=`cat CajaMisteriosa.txt | grep -w $random | cut -d " " -f 1`
    sleep 1
    com=`ls Usuarios/$1 | grep $poke`
        if [ -n "$com" ]
        then
            Random $1
        else
        let can=$can-$coste
        echo "$can" > Puntos/$1.txt
        pokei=`cat PokemonBasics.txt | grep -w ^$poke | cut -d " " -f 1,2,3,4,5,6,7,8,9,10`
        echo "Has conseguido ha $poke"
        echo "$pokei $1" > Usuarios/$1/$poke.txt
        sleep 1
        fi
}
Compra () {
        com=`ls Usuarios/$1 | grep $poke`
        if [ -n "$com" ]
        then
            echo "Ya lo tienes"
            sleep 1
            ./Tienda.sh $1
        else
            can=`cat Puntos/$1.txt`
            if [ $can -lt $coste ]
            then
                echo "No tienes puntos suficientes"
                sleep 1
                ./Tienda.sh $1
            else    
                let can=$can-$coste
                echo "$can" > Puntos/$1.txt
                pokei=`cat PokemonBasics.txt | grep -w ^$poke`
                echo "$pokei $1" > Usuarios/$1/$poke.txt
                echo "Felicidades has comprado a $poke"
                sleep 1
                ./Tienda.sh $1
            fi
        fi
}
clear
echo -e "\e[0;91mⓅ ⓞ ⓚ ⓔ ⓜ ⓞ ⓝ ⓢ :\e[0m
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════

   \e[0;91m╔══════════╗
   ║1.Chimchar║-------1000 puntos
   ╚══════════╝
    `cat Sprites/Chimcharfront`
   \e[0;34m╔═════════╗
   ║2.Piplup ║-------1000 puntos
   ╚═════════╝
    `cat Sprites/Piplupfront`
   \e[0;32m╔═══════════╗
   ║3.Bulbasaur║-------1000 puntos
   ╚═══════════╝
    `cat Sprites/Bulbasaurfront`
   \e[1;32m╔══════════╗
   ║4.Caterpie║-------800 puntos
   ╚══════════╝
    `cat Sprites/Caterpiefront`
   \e[1;33m╔═════════╗
   ║5.Pikachu║-------2000 puntos
   ╚═════════╝
    `cat Sprites/Pikachufront`
   \e[0;37m╔═══════════╗
   ║6.Staraptor║-------3000 puntos
   ╚═══════════╝
    `cat Sprites/Staraptorfront`
   \e[1;34m╔══════════╗
   ║7.Gyarados║-------5000 puntos
   ╚══════════╝
    `cat Sprites/Gyaradosfront`
   \e[1;91m╔═══════════╗
   ║8.Charizard║-------5000 puntos
   ╚═══════════╝
    `cat Sprites/Charizardfront`
   \e[1;32m╔════════════╗
   ║9.Marcianito║-------10000 puntos
   ╚════════════╝\e[0m
    `cat Sprites/Marcianitofront`

══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
"
echo -e "\e[1;34mⒸ ⓞ ⓕ ⓡ ⓔ   Ⓜ ⓘ ⓢ ⓣ ⓔ ⓡ ⓘ ⓞ ⓢ ⓞ  -------2500 puntos"
echo -e "
                                                                                
 			                ▄ ▄▄▄ ▄                  
 			              ▄▒▒▒▒▓▓▓▓▒▄▄▄▄▄▄▄▄▄▄▄▓▓▓▓▒▓▓▓▓▓▄▄▄▄▄▄▄▄▄▄▄▄▓▒▒▒░░░ ░░             
 			            ▄▓▓▓▓███████████████▓▓▓▓▓▓▓███████████████▓▓▓▓▌▐░░ ▒░░░▒            
 			           ▄░▒▓▓███████████████▓▌▐▒▒▓▓███████████████▓▒▓▓▌░░▐ ▒▒▒▒▒░░           
 			          ▐▓▒▒▓███████████████▒▒▒▒▒▒▓███████████████▓▓▓▓▓░░▒ ▒▒▒▒▒▒▒▒▒          
			           ▒▒▒▒▓██████████████▌▒▒▒▒▒▒███████████████▓▒▒▒▒░░▐▒ ▒▒▒▒▒▒▒▒▒░         
		  	        ▐▒▒▒▒██▓███████████▓▒▒▒▒▒▒▓███████████████▒▒▒▒▒░░▒ ▒▒▒▒▒▒▒▒▀░▒         
		 	         ░▐▒░▐▐▐▒▒▒▒▒▒▒▒▒▒▒▒░░░▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░ ░▐▐ ▐▐▐▐░░░░▒▐         
			            ▐▐░░░░░░▒▒▒▒▒░▒░░ ░ ▒▒▒░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒ ▐▒▒ ░░░░░░░░▒ ▒▒         
		 	         ▐▄▄▄▄▄▄▄▒▒▄▒▒▒▒▒▒▐▐▐▐░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░▒▒▒░░▐▐ ▐▐▐▐▒▐▐▐▒▒▐         
		 	         ░▐▒▒░░░▒▒▒▒▒▒▒▒▒▒░░░░░▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▐░░░ ░░░░░░░░░▒▒         
		  	        ▐░▒▀▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒▒▐░░░░ ░▐▒▒▒▒▒▒▓▒          
		  	         ▒▒▒▒█▓▓▓▓▓▓▓▓▌▀▀▀▀▀▓▓▓▓▓▓▀▀▀▀▀▓▓▓▓▓▓▓▓▓▓▒▒▒▒▒░▐▒▒▒ ▒▒▒▒▒▒▓▌▒          
 		 	         ▐▒▒▒▓█▓▓▓▓▓▓▓▌▒▒▒▒▒▀▀▀▀▀▀▒▒▒▒▒██████████▌▒▒▒▒░▐▒▒▒ ▒▒▒▒▒▒▓░▒          
 		  	         ▒▒▒▒████████▌▒▒▒▓▒▒█▓▓▓▒▒▒▒▒▒▓█████████▌▒▒▒▒░▒▒▒▒▒ ▒▒▒▒▓▓▒           
		   	         ▐▒▒▒████████▓▒▒▒▓▒▒████▒▒▒▒▒▒▓█████████▓▒▒▒▒▒▒▒▒▒▒ ▒▒▒▓▓▀▒           
		 	            ░▒▓█████████▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓█████████▓▒▓▒▒ ▒▒▒▒▒▒▒ ▒▒▓▒▒           
		   	          ▒▒▒▒███████████▓▓▒▒▒▒▒▒▓▓█████████████▓▒▓▒▒▒▒▒▒▒▒▒ ▒▒▓▌▒            
 			             ▒▒▒▓█████████████████████████████████▒▒▒▒▒▒▒▒▒▒▒▒▒ ▒▓▒▒            
		   	           ▒▒▒▒█████████████████████████████████▒▒▒▒░▒▒▒▒▒▒▒▒ ▓█▒▒            
 		  	           ▐▒▒▒▓████████████████████████████████▒▒▒▒░░▒▒▀▀▒▒▒ ▒▒▒░            
 			              ▒▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▀▓▓▓▒▓▒▓▓▓▓▓▓▓▓▓▓▓▒▒▒▒░░▐░▒▒░▒▒▒ ▒▒             
 		  	            ▐▒▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▓▓▓▓▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░▒░░\e[0m 


══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════
══════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════                                                                                 
 	                    
 Pulse \e[0;91mB\e[0m para salir"

read art
case $art in 
    1)
        poke=Chimchar
        coste=1000
        Compra $1
    ;;
    2)
        poke=Piplup
        coste=1000
        Compra $1
    ;;
    3)
        poke=Bulbasaur
        coste=1000
        Compra $1
    ;;
    4)
        poke=Caterpie
        coste=800
        Compra $1
    ;;
    5)
        poke=Pikachu
        coste=2000
        Compra $1
    ;;
    6)
        poke=Staraptor
        coste=3000
        Compra $1
    ;;
    7)
        poke=Gyarados
        coste=5000
        Compra $1
    ;;
    8)
        poke=Charizard
        coste=5000
        Compra $1
    ;;
    9)
        poke=Marcianito
        coste=10000
        Compra $1
    ;;
    10)
        can=`cat Puntos/$1.txt`
        coste=500
            if [ $can -lt $coste ]
            then
                echo "No tienes puntos suficientes"
                ./Tienda.sh $1
            else
                Random $1
                ./Tienda.sh $1
            fi
                
                
    ;;
    Ivan|Ferran|Johan|Joan)
        echo "¿Estas seguro de hacer esto?"
        read seg
        case $seg in
            si|Si)
                echo "Esto es algo muy serio asi que nada de bromas"
                sleep 1
                echo "Voy a preguntarte un pregunta muy dificil"
                sleep 0.5
                echo "Si la aciertas ..."
                sleep 0.2
                echo "....."
                sleep 0.3
                echo "....."
                sleep 0.5
                echo "Cuantos pokémon existian en la primera generación?"
                read lag
                case $lag in 
                    152)
                        echo "..."
                        sleep 0.5
                        echo "Correcto...."
                        sleep 0.5
                        echo "Vas a recibir al pokémon por el cual has constestado 152"
                        sleep 0.2
                        poke=Missigno
                        com=`ls Usuarios/$1 | grep $poke`
                        if [ -n "$com" ]
                        then
                            echo "¿Si ya lo tienes pa k repites?"
                            ./Tienda.sh $1
                        else    
                                pokei=`cat PokemonBasics.txt | grep -w ^$poke`
                                echo "$pokei $1" > Usuarios/$1/$poke.txt
                            
                         fi
                        echo "Bueno ya lo tienes...."
                        sleep 0.5
                        echo "TEN CUIDADO!!!"
                        sleep 0.1
                        ./Tienda.sh $1
                    ;;
                    *)
                        echo "No es la respuesta correcta MALA SUERTE MUAJAJAJAJAJJAJA"
                        sleep 1
                        ./Tienda.sh $1
                    ;;
                    esac
            ;;
            *)
                ./Tienda.sh $1
            ;;
            esac
        ;;
        b|B)
        ./PokeGear.sh $1
        ;;
        *)
        ./Tienda.sh $1
        ;;
        esac
