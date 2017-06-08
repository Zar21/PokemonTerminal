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
        pokei=`cat PokemonBasics.txt | grep -w ^$poke`
        echo "Has conseguido ha $poke"
        echo "$pokei $1" > Usuarios/$1/$poke.txt
        sleep 1
        fi
}
Compra () {
        com=`ls Usuarios/$1 | grep $poke`
        if [ -n "$com" ]
        then
            ./Tienda.sh $1
        else
            can=`cat Puntos/$1.txt`
            if [ $can -lt $coste ]
            then
                echo "No tienes puntos suficientes"
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
echo "Tienda"
echo "Articulos:
    1.Chimchar-------1000 puntos
    `cat Sprites/Chimcharfront`
    2.Piplup---------1000 puntos
    `cat Sprites/Piplupfront`
    3.Bulbasaur------1000 puntos
    `cat Sprites/Bulbasaurfront`
    4.Caterpie-------800 puntos
    `cat Sprites/Caterpiefront`
    5.Pikachu--------2000 puntos
    `cat Sprites/Pikachufront`
    6.Staraptor------3000 puntos
    `cat Sprites/Staraptorfront`
    7.Gyarados-------5000 puntos
    `cat Sprites/Gyaradosfront`
    8.Charizard------5000 puntos
    `cat Sprites/Charizardfront`
    9.Marcianito-----10000 puntos
    `cat Sprites/Marcianitofront`
    10.CofreMisterioso-2500 puntos
    Pulse B para salir
"
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
            if [ $can -lt 2500 ]
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
                                poke=`cat PokemonBasics.txt | grep -w ^$poke`
                                echo "$poke $1" > Usuarios/$1/$poke.txt
                            
                         fi
                        echo "Bueno ya lo tienes...."
                        sleep 0.5
                        echo "TEN CUIDADO!!!"
                        sleep 0.1
                    ;;
                    *)
                        echo "No es la respuesta correcta MALA SUERTE MUAJAJAJAJAJJAJA"
                        sleep 1
                        ./Tienda $1
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
    
