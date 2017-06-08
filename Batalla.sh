#!/bin/bash
source functions.sh
echo -e "						\e[1;31m╔══════════════════════════════════════════╗`tput sgr0`
		 				\e[1;31m║                \e[2;34m  PokeGear`tput sgr0`                \e[1;31m║`tput sgr0`
	    				       \e[1;31m ║╔════════════════════════════════════════╗║`tput sgr0`
		 				\e[1;31m║║					  ║║`tput sgr0`
		 				\e[1;31m║║`tput sgr0`\e[100mBatalla`tput sgr0`                                 \e[1;31m║║`tput sgr0`
		 				\e[1;31m║║`tput sgr0`\e[100mSe recomienda bajar el zoom`tput sgr0`	       \e[1;31m   ║║`tput sgr0`
						\e[1;31m║║`tput sgr0`\e[100mQue quieres hacer`tput sgr0`       		  \e[1;31m║║`tput sgr0`
						\e[1;31m║║`tput sgr0`\e[100m1-Buscar Partida`tput sgr0`       		  \e[1;31m║║`tput sgr0`
						\e[1;31m║║`tput sgr0`\e[100m2-Crear Partida`tput sgr0`       		  \e[1;31m║║`tput sgr0`
						\e[1;31m║║`tput sgr0`\e[100mB-Salir`tput sgr0`       		          \e[1;31m║║`tput sgr0`
						\e[1;31m║║				    	  ║║
						║║					  ║║
						║║					  ║║
						║╚════════════════════════════════════════╝║
						║                    •                     ║
						║                  •   •                   ║
						║                    •                     ║
						╚══════════════════════════════════════════╝`tput sgr0` "
read conec
case $conec in
		1)
		Buscador $1
		;;
		2)
		Creador $1
		;;
		b|B)
		./PokeGear.sh $1
		;;
		*)
		./Batalla.sh $1
		;;
esac
sleep 1
Intro
echo "Elige tu pokémon"
num=`ls ../../Usuarios/$1 | wc -l`
for p in `seq $num`
do
	poke=`ls ../../Usuarios/$1 | head -n$p | tail -1`
	cara=`echo "$poke" | wc -c`
	let cara=$cara-5
	echo -n "$p "
	echo "$poke" | cut -c -$cara
done
read -p "Introduce su numero:" poke
elegit=`ls ../../Usuarios/$1 | head -n$poke | tail -1`
cat ../../Usuarios/$1/$elegit >> CB.txt
lineas=0
echo "Esperando a que el otro elija su pokémon......."
while [ $lineas -eq 0 ] 
do
	prep=`cat CB.txt | wc -l`
	if [ $prep -eq 2 ]
	then
		lineas=1
	fi
done
admin=`echo "$partida" | cut -c 10-`
usu=`cat Nom2.txt`
hptotad=`cat CB.txt | grep $admin$ | cut -d " " -f 3`
hptotus=`cat CB.txt | grep $usu$ | cut -d " " -f 3`
velad=`cat CB.txt | grep $admin$ | cut -d " " -f 5`
velus=`cat CB.txt | grep $usu$ | cut -d " " -f 5`
echo "QUE EMPIEZE EL COMBATE!"
muerte=0
while [ $muerte = 0 ]
do
Visual $1
Moviments $1
echo "Espera a que tu contrincante elija movimiento..."
Espera $1
case $conec in
		1)
		usu=$1
		#vida0=`cat CB.txt | grep $admin$ | cut -d " " -f 3 `
		#vida1=`cat CB.txt | grep $usu$ | cut -d " " -f 3 `
		sleep 1
		Visual $1
		sleep 1.5
		Muerte $1
		sleep 1
		clear
		Visual $1
		sleep 1.5
		Muerte $1
		#vida0d=`cat CB.txt | grep $admin$ | cut -d " " -f 3`
		#vida1d=`cat CB.txt | grep $usu$ | cut -d " " -f 3`
		#let danyor0=$vida0-$vida0d
		#let danyor1=$vida1-$vida1d
		#echo "`cat CB.txt | grep $admin$ | cut -d " " -f 1` ha perdido $danyor0 de vida"
		#echo "`cat CB.txt | grep $usu$ | cut -d " " -f 1` ha perdido $danyor1 de vida"
		clear
		;;
		2)
			usu=`cat Nom2.txt`
			admin=$1
		Movimientos0=("`cat ataques.txt | grep -w $admin$ | cut -d " " -f  1`")
		Movimientos1=("`cat ataques.txt | grep -w $usu$ | cut -d " " -f  1`")
		Tipos1=("`cat CB.txt | grep -w $usu$ | cut -d " " -f 6`" "`cat CB.txt | grep -w $usu$ | cut -d " " -f 11`")
		Tipos0=("`cat CB.txt | grep -w $admin$ | cut -d " " -f 6`" "`cat CB.txt | grep -w $admin$ | cut -d " " -f 11`")
		Calculo $1
		if [ $velad -gt $velus ]
		then
			Daño0 $1
		else
			Daño1 $1
		fi
		Visual $1
		sleep 1.5
		Muerte $1
		if [ $velus -lt $velad ]
		then
			Daño1 $1
		else
			Daño0 $1
		fi
		clear
		Visual $1
		sleep 1.5
		Muerte $1
		rm ataques.txt
		clear
		;;
		esac
done
clear 
vidaPoke1=`cat CB.txt | grep $admin$ | cut -d " " -f 3 `
vidaPoke2=`cat CB.txt | grep $usu$ | cut -d " " -f 3 `
if [ $vidaPoke1 -eq 0 ]
then
	echo "$usu ha ganado"
	punts=`cat ../../Puntos/$usu.txt`
	let punts=$punts+100
	echo "$punts" > ../../Puntos/$usu.txt
else
	echo "$admin ha ganado"
	punts=`cat ../../Puntos/$admin.txt`
	let punts=$punts+50
	echo "$punts" > ../../Puntos/$admin.txt
fi
echo "Saliendo..."
sleep 2s
case $conec in
	1) cd ../..
		./PokeGear.sh $1
	;;
	2) cd ..
	   rm -r PartidaDe$1
	   cd ..
	   	./PokeGear.sh $1
	;;
	esac

