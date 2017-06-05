#!/bin/bash
source functions.sh
echo "$1"
Nom=`cat UsuariLogejat.txt`
echo "Que quieres hacer?"
echo "1-Buscar Partida"
echo "2-Crear Partida"
read conec
case $conec in
		1)
		Buscador $1
		;;
		2)
		Creador $1
		;;
		*)
		./Batalla.sh $1
		;;
esac
sleep 1
echo "Elige tu pokémon"
num=`ls ../../Usuarios/$1 | wc -l`
for p in `seq $num`
do
	poke=`ls ../../Usuarios/$1 | head -n$p | tail -1`
	cara=`echo "$poke" | wc -c`
	let cara=$cara-5
	echo -n "$p"
	echo "$poke" | cut -c -$cara
done
read -p "Introduce su numero:" poke
elegit=`ls ../../Usuarios/$1 | head -n$poke | tail -1`
cat ../../Usuarios/$1/$elegit >> Combatientes.txt
lineas=0
echo "Esperando a que el otro elija su pokémon......."
while [ $lineas -eq 0 ] 
do
	prep=`cat Combatientes.txt | wc -l`
	if [ $prep -eq 2 ]
	then
		lineas=1
	fi
done
echo "QUE EMPIEZE EL COMBATE!"
muerte=0
while [ $muerte = 0 ]
do
Moviments $1
Espera $1
case $conec in
		1)
		usu=$1
		Vida1=`cat Combatientes.txt | grep -w $admin$ | cut -d " " -f 3`
		Vida2=`cat Combatientes.txt | grep -w $usu$ | cut -d " " -f 3`
		sleep 1
		Vida1v1=`cat Combatientes.txt | grep -w $admin$ | cut -d " " -f 3`
		Vida2v1=`cat Combatientes.txt | grep -w $usu$ | cut -d " " -f 3`
		let VidaFinal1=$Vida1-$Vida1v1
		let VidaFinal2=$Vida2-$Vida2v1
		echo "`cat Combatientes.txt | grep $usu$ | cut -d " " -f 1 ` ha perdido $VidaFinal2" 
		echo "`cat Combatientes.txt | grep $admin$ | cut -d " " -f 1 ` ha perdido $VidaFinal1"
		Muerte $1
		;;
		2)
		sleep 0.5
		for movi in "0" "1"
		do
		if [ $movi -eq 0 ]
		then
			usu=$1
			admin=$1
		else
			usu=`cat Noms.txt | cut -d ":" -f "$movi"`
		fi
		let movi=$movi*4
		Movimientos[$movi]=("`cat ataques.txt | grep -w $usu$ | cut -d " " -f  1`")
		Tipos[$movi]=("`cat Combatientes.txt | grep -w $usu$ | cut -d " " -f 5`" "`cat Combatientes.txt | grep $usu$ | cut -d " " -f 10`")
		Calculo $1
		done
		Daño1 $1
		echo "`cat Combatientes.txt | grep $usu$ | cut -d " " -f 1 ` ha perdido $danyo0"
		Muerte $1
		Daño2 $1
		echo "`cat Combatientes.txt | grep $admin$ | cut -d " " -f 1 ` ha perdido $danyo4"
		Muerte $1
		;;
		esac
done 
vidaPoke1=`cat Combatientes.txt | grep $admin$ | cut -d " " -f 3 `
vidaPoke2=`cat Combatientes.txt | grep $usu$ | cut -d " " -f 3 `
if [ $vidaPoke1 -eq 0]
then
	echo "$usu ha ganado"
else
	echo "$admin ha ganado"
fi
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

