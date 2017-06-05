#Esta MAL HI HA QUE RE FERO
clear
usuari=`cat usuari.txt`
echo -e "                                                    \e[1;34mQue pokémon quieres ver?`tput sgr0` "
echo -e "                                                    \e[1;31m1-Chimchar`tput sgr0` "
echo -e "                                                    \e[1;34m2-Piplup`tput sgr0` "
echo -e "                                                    \e[1;33m3-Bulbasaur`tput sgr0` "
echo -e "                                                    \e[1;31mB-Para salir`tput sgr0` "
read eleccio
case $eleccio in
		1)
			echo -e " \e[1;31mEscala acantilados escarpados con agilidad. Vive en las montañas y su fuego se apaga cuando duerme. El fuego en su cola es hecho a base de gas de su estómago. Ni siquiera la lluvia puede apagar la llama. Es muy ágil. Antes de dormir apaga la llama de su cola para no provocar un incendio. `tput sgr0` "
		;;		
		2)
		;;
		3)
		;;
		B|b)
		./Menu.sh
		;;
esac
echo -e " \e[1;31mPulsa enter......`tput sgr0` "
read fjdsjgreggngs
./listapokemon.sh 
