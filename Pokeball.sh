 echo -e "
                                           \e[0;30m██████           ██████           ██████
                                         \e[0;30m██\e[0m\e[0;91m▓▓▓▓▓▓\e[0m\e[0;30m██       ██\e[0m\e[0;91m▓▓▓▓▓▓\e[0m\e[0;30m██       ██\e[0m\e[0;91m▓▓▓▓▓▓\e[0m\e[0;30m██\e[0m
                                       \e[0;30m██\e[0m\e[0;91m▓▓▓▓▓▓▓▓▓▓\e[0m\e[0;30m██   ██\e[0m\e[0;91m▓▓▓▓▓▓▓▓▓▓\e[0m\e[0;30m██   ██\e[0m\e[0;91m▓▓▓▓▓▓▓▓▓▓\e[0m\e[0;30m██\e[0m
                                       \e[0;30m██████\e[0m▒▒\e[0m\e[0;30m██████   ██████\e[0m▒▒\e[0;30m██████   ██████\e[0m▒▒\e[0;30m██████\e[0m
                                       \e[0;30m██\e[0m██████████\e[0;30m██   ██\e[0m██████████\e[0;30m██   ██\e[0m██████████\e[0;30m██\e[0m
                                         \e[0;30m██\e[0m██████\e[0;30m██       ██\e[0m██████\e[0;30m██       ██\e[0m██████\e[0;30m██\e[0m 
                                           \e[0;30m██████           ██████           ██████\e[0m "

echo "  "
echo "  "
echo -e "                                     \e[1;32m╔═════════════╗\e[0m    \e[0;31m╔═════════════╗\e[0m    \e[0;34m╔═════════════╗\e[0m 
                                     \e[1;32m║ 1.Bulbasaur ║\e[0m    \e[0;31m║ 2.Chimchar  ║\e[0m    \e[0;34m║  3.Piplup   ║\e[0m "
echo -e "                                     \e[1;32m╚═════════════╝\e[0m    \e[0;31m╚═════════════╝\e[0m    \e[0;34m╚═════════════╝\e[0m "

read p
#cd ..
#cd Elección\ Pokémon/
uno=1

	case $p in
	
	Bulbasaur) #cd Iniciales/
	#cacaview Bulbasaur.jpeg; clear ; cd ..; 
	./Pokeball.sh $1
	;; 

	Chimchar) #cd Iniciales/ 
        #cacaview Chimchar.jpeg; clear ; cd ..; 
	./Pokeball.sh $1
	;;

	Piplup) #cd Iniciales/
	#cacaview Piplup.gif; clear ; cd ..; 
	./Pokeball.sh $1
	;;
	1)
			elegit=`cat PokemonBasics.txt | grep -w ^Bulbasaur`
			echo "$elegit $1" > ./Usuarios/$1/Bulbasaur.txt 
		;;
	2)
			
			elegit=`cat PokemonBasics.txt | grep -w ^Chimchar`
			echo "$elegit $1" > ./Usuarios/$1/Chimchar.txt
		;;
	3)
			
			elegit=`cat PokemonBasics.txt | grep -w ^Piplup`
			echo "$elegit $1" > ./Usuarios/$1/Piplup.txt
		;;
	*)
		echo "No existe"
		./Pokeball.sh
		;;

	esac
	./PokeGear.sh $1


