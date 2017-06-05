function InicioL() {
	echo "  "
echo "  "
echo -e "\e[1;35m                                        ▒█▀▀█ ▒█▀▀▀█ ▒█░▄▀ ▒█▀▀▀ ▒█▀▄▀█ ▒█▀▀▀█ ▒█▄░▒█ 　 
                                        ▒█▄▄█ ▒█░░▒█ ▒█▀▄░ ▒█▀▀▀ ▒█▒█▒█ ▒█░░▒█ ▒█▒█▒█ 　 
                                        ▒█░░░ ▒█▄▄▄█ ▒█░▒█ ▒█▄▄▄ ▒█░░▒█ ▒█▄▄▄█ ▒█░░▀█ 　 

　 　                                      ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ ░▀░ █▀▀▄ █▀▀█ █░░ 
　 　                                      ░░█░░ █▀▀ █▄▄▀ █░▀░█ ▀█▀ █░░█ █▄▄█ █░░ 
　 　                                      ░░▀░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀ "`tput sgr0`
echo -e "\e[2;92m█    █   █   █ █  █    █  █  █  █  █ █  █   █   █ █  █   █    █   █   █ █  █    █  █  █  █  █ █  █   █   █ █  █\e[0m                 
\e[0;32m██ █ ██ ██ █ █ █ ██ █ ██ █ █ █ ██ ██ ██ █ ██ █ █ ██ ██ █ ██ █ ██ ██ █ █ █ ██ █ ██ █ █ █ ██ ██ ██ █ ██ █ █ ██ ██\e[0m                       
\e[2;32m███████████████████████████████████████████████████████████████████████████████████████████████████████████████\e[0m " 

echo "   "
echo "   "
echo "════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo "   "
echo " Introduce L para logearte o R para registrate "
echo "  "
echo "════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
read m
case $m in
	
	l|L)
		Entrada
	;; 
	r|R)
		./Inicio.sh
	;;
	*)
		./Registro.sh
esac	 
}

function Entrada() {
	clear
	echo "  "
echo "  "
echo -e "\e[1;35m                                        ▒█▀▀█ ▒█▀▀▀█ ▒█░▄▀ ▒█▀▀▀ ▒█▀▄▀█ ▒█▀▀▀█ ▒█▄░▒█ 　 
                                        ▒█▄▄█ ▒█░░▒█ ▒█▀▄░ ▒█▀▀▀ ▒█▒█▒█ ▒█░░▒█ ▒█▒█▒█ 　 
                                        ▒█░░░ ▒█▄▄▄█ ▒█░▒█ ▒█▄▄▄ ▒█░░▒█ ▒█▄▄▄█ ▒█░░▀█ 　 

　 　                                      ▀▀█▀▀ █▀▀ █▀▀█ █▀▄▀█ ░▀░ █▀▀▄ █▀▀█ █░░ 
　 　                                      ░░█░░ █▀▀ █▄▄▀ █░▀░█ ▀█▀ █░░█ █▄▄█ █░░ 
　 　                                      ░░▀░░ ▀▀▀ ▀░▀▀ ▀░░░▀ ▀▀▀ ▀░░▀ ▀░░▀ ▀▀▀ "`tput sgr0`
echo -e "\e[2;92m█    █   █   █ █  █    █  █  █  █  █ █  █   █   █ █  █   █    █   █   █ █  █    █  █  █  █  █ █  █   █   █ █  █\e[0m                 
\e[0;32m██ █ ██ ██ █ █ █ ██ █ ██ █ █ █ ██ ██ ██ █ ██ █ █ ██ ██ █ ██ █ ██ ██ █ █ █ ██ █ ██ █ █ █ ██ ██ ██ █ ██ █ █ ██ ██\e[0m                       
\e[2;32m███████████████████████████████████████████████████████████████████████████████████████████████████████████████\e[0m " 

echo "   "
echo "   "
echo "════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
echo "   "
echo " Usuario: "
echo "  "
echo "════════════════════════════════════════════════════════════════════════════════════════════════════════════════"
read Usuario
numus=`cat Usuarios.txt | wc -l`
for n in `seq $numus`
do
	UsuariCreat=`cat Usuarios.txt | awk 'NF { $0=++a " " $0 }; { print }'| grep -w ^$n | cut -d " " -f 2`
if [ "$Usuario" = "$UsuariCreat" ]
then
echo "Introduce tu contraseña"
read -s Contrasenya
ContrasenyaReal=`cat Usuarios.txt | awk 'NF { $0=++a " " $0 }; { print }'| grep -w ^$n | cut -d " " -f 3`
if [ "$Contrasenya" = "$ContrasenyaReal" ]
then 
echo "$Usuario" > UsuariLogejat.txt
./PokeGear.sh $Usuario
else
echo "Contrasenya Incorrecta"
./Registro.sh 
fi
fi
done
./Registro.sh
}

Creador() {
		cd Batallas
		mkdir PartidaDe$1
		cd PartidaDe$1
		partida=PartidaDe$1
		echo "Esperant a que algu es conecte.........."
		conectados=0
		while [ $conectados -eq 0 ]
		do
			comprovador=`ls | wc -l`
			for n in `seq $comprovador`
			do
				experimento=`ls | head -n$n | tail -n1`
				if [ $experimento = Nom2.txt ]
				then
					conectados=1
					break
				fi
			done
		done
		echo "$1: : :`cat Nom2.txt`" > Noms.txt
		echo "`cat Nom2.txt | cut -d " " -f 1` y tu se han conectado"
}

Buscador() {
	cd Batallas
		ls -l | tr -s " " | grep ^d | cut -d " " -f 9 | awk '{ print NF " " $0 }'
		echo "A quien quieres unirte"
		read eleccio
		partida=`ls -l | tr -s " " | grep ^d | cut -d " " -f 9 | head -n$eleccio | tail -n1`
		cd $partida
		echo "$1" > Nom2.txt
		admin=`echo "$partida" | cut -c 10-`
		echo "$admin y tu se han conectado"
}

Moviments() {
	echo "Elije tu movimiento:"
	paelegir=1
	for n in "6" "7" "8" "9"
	do
	echo "$paelegir `cat Combatientes.txt | grep $1$ | cut -d " " -f $n`"
	let paelegir=$paelegir+1
	done
	read -p "Introduce el numero:" mov
	echo "$mov $1" >> ataques.txt 
}

Espera() {
	espera=0
	while [ $espera -eq 0 ]
	do
		totsm=`cat ataques.txt | wc -l`
		if [ $totsm -eq 2 ]
		then
			espera=1
		fi
	done
}

Calculo() {
	movi1=$movi+1
	movi2=$movi+2
	movi3=$movi+3
	Movimientos[$movi1]=`cat ../../Moviments.txt | grep -w ^${Movimientos[$movi]} | cut -d "-" -f 2`
	Movimientos[$movi2]=`cat ../../Moviments.txt | grep -w ^${Movimientos[$movi]} | cut -d "-" -f 3`
	Movimientos[$movi3]=`cat ../../Efectivitat.txt | grep ^${Movimientos[$movi3]} | grep ${Tipos[$movi]} | cut -d " " -f 3`
	if [ ${Movimientos[$movi3]} = Muyeficaz ]
	then
		let danyo$movi=${Movimientos[$movi1]}*2
	elif [ ${Movimientos[$movi3]} = Pocoeficaz ]
	then	
		let danyo$movi=${Movimientos[$movi1]}/2
	elif [ ${Movimientos[$movi3]} = Inmune ]
	then	
		let danyo$movi=${Movimientos[$movi1]}*0
	else	
		danyo$movi=${Movimientos[$movi1]}
	fi
}

Daño1() {
	awk '$10==Nom{$3-=danyo}1' Nom=${Tipos[5]} danyo=$danyo0 Combatientes.txt >file.txt
			mv file.txt Combatientes.txt
}

Daño2() {
	awk '$10==Nom{$3-=danyo}1' Nom=${Tipos[1]} danyo=$danyo4 Combatientes.txt >file.txt
			mv file.txt Combatientes.txt
}
Muerte() {
	posmu=`cat Combatientes.txt | cut -d " " -f 3 | grep -w 0`
	if [ -n "$posmu"]
	then	
		muerte=1
		break
	fi
}
