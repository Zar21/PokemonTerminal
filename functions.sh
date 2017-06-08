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
	exit
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
		algu=`ls $partida | grep Nom2.txt`
		if [ -n "$algu" ]
		then	
			echo "Esa partida ya esta llena"
			clear
			Buscador $1
		else
		cd $partida
		echo "$1" > Nom2.txt
		admin=`echo "$partida" | cut -c 10-`
		echo "$admin y tu se han conectado"
		fi
}

Moviments() {
	read -p "                                                                  Introduce el numero:" mov
	echo "$mov"
	if [ $mov -eq 1 ]
	then
		movimiento=`cat CB.txt | grep $1$ | cut -d " " -f 7`
	elif [ $mov -eq 2 ]
	then
		movimiento=`cat CB.txt | grep $1$ | cut -d " " -f 8`
	elif [ $mov -eq 3 ]
	then
		movimiento=`cat CB.txt | grep $1$ | cut -d " " -f 9`
	elif [ $mov -eq 4 ]
	then	
		movimiento=`cat CB.txt | grep $1$ | cut -d " " -f 10`
	else
		echo "Porfavor elije un movimiento"
		sleep 1
		Moviments $1
	fi
	echo "$movimiento $1" >> ataques.txt 
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
	Movimientos0[1]=`cat ../../Moviments.txt | grep -w ^${Movimientos0[0]} | cut -d "-" -f 2`
	Movimientos1[1]=`cat ../../Moviments.txt | grep -w ^${Movimientos1[0]} | cut -d "-" -f 2`
	Movimientos0[2]=`cat ../../Moviments.txt | grep -w ^${Movimientos0[0]} | cut -d "-" -f 3`
	Movimientos1[2]=`cat ../../Moviments.txt | grep -w ^${Movimientos1[0]} | cut -d "-" -f 3`
	Movimientos0[3]=`cat ../../Efectivitat.txt | grep ^${Movimientos0[2]} | cut -d " " -f 2,3 | grep ${Tipos1[0]} | cut -d " " -f 2`
	Movimientos1[3]=`cat ../../Efectivitat.txt | grep ^${Movimientos1[2]} | cut -d " " -f 2,3 | grep ${Tipos0[0]} | cut -d " " -f 2`
	if [ ${Movimientos0[3]} = Muyeficaz ]
	then
		echo "Es muy eficaz"
		let danyo0=${Movimientos0[1]}*2
		echo "$danyo0"
	elif [ ${Movimientos0[3]} = Pocoeficaz ]
	then
		echo "Es poco eficaz"	
		let danyo0=${Movimientos0[1]}/2
		echo "$danyo0"
	elif [ ${Movimientos0[3]} = Inmune ]
	then
		echo "Es inmune"	
		let danyo0=${Movimientos0[1]}*0
		echo "$danyo0"
	else
		echo "Es normal"	
		danyo0=${Movimientos0[1]}
		echo "$danyo0"
	fi
	if [ ${Movimientos1[3]} = Muyeficaz ]
	then
		echo "Es muy eficaz"
		let danyo1=${Movimientos1[1]}*2
		echo "$danyo1"
	elif [ ${Movimientos1[3]} = Pocoeficaz ]
	then
		echo "Es poco eficaz"	
		let danyo1=${Movimientos1[1]}/2
		echo "$danyo1"
	elif [ ${Movimientos1[3]} = Inmune ]
	then	
		echo "Es inmune"
		let danyo1=${Movimientos1[1]}*0
		echo "$danyo1"
	else
		echo "Es normal"	
		danyo1=${Movimientos1[1]}
		echo "$danyo1"
	fi
}

Daño0() {
	awk '$11==Nom{$3-=danyo}1' Nom=${Tipos1[1]} danyo=$danyo0 CB.txt >file.txt
			mv file.txt CB.txt
	compr=`cat CB.txt | grep -w $usu$ | cut -d " " -f 3`
	echo "$compr"
	if [ $compr -lt 0 ]
	then
		zero=0
		echo "TE MENOS DE 0"
		awk '$11==Nom{$3=zero}1' Nom=${Tipos1[1]} zero=$zero CB.txt >file.txt
			mv file.txt CB.txt
	fi
}

Daño1() {
	awk '$11==Nom{$3-=danyo}1' Nom=${Tipos0[1]} danyo=$danyo1 CB.txt >file.txt
			mv file.txt CB.txt
	compr=`cat CB.txt | grep -w $admin$ | cut -d " " -f 3`
	echo "$compr"
	if [ $compr -lt 0 ]
	then
		zero=0
		echo "TE MENOS DE 0"
		awk '$11==Nom{$3=zero}1' Nom=${Tipos0[1]} zero=$zero CB.txt >file.txt
			mv file.txt CB.txt
	fi
}
Muerte() {
	posmu=`cat CB.txt | cut -d " " -f 3 | grep -w 0`
	if [ -n "$posmu" ]
	then	
		muerte=1
		break
	fi
}
Visual() {
	if [ $1 = $admin ]
	then
		Pokeb=`cat CB.txt | grep $admin$ | cut -d " " -f 1`
		hpb=`cat CB.txt | grep $admin$ | cut -d " " -f 3`
		Pokef=`cat CB.txt | grep $usu$ | cut -d " " -f 1`
		hpf=`cat CB.txt | grep $usu$ | cut -d " " -f 3`
		at1=`cat CB.txt | grep $admin$ | cut -d " " -f 7`
		at2=`cat CB.txt | grep $admin$ | cut -d " " -f 8`
		at3=`cat CB.txt | grep $admin$ | cut -d " " -f 9`
		at4=`cat CB.txt | grep $admin$ | cut -d " " -f 10`
		nvb=`cat CB.txt | grep $admin$ | cut -d " " -f 2`
		nvf=`cat CB.txt | grep $usu$ | cut -d " " -f 2`
		hptot=$hptotad
		hptota=$hptotus
	else
		Pokeb=`cat CB.txt | grep $usu$ | cut -d " " -f 1`
		hpb=`cat CB.txt | grep $usu$ | cut -d " " -f 3`
		Pokef=`cat CB.txt | grep $admin$ | cut -d " " -f 1`
		hpf=`cat CB.txt | grep $admin$ | cut -d " " -f 3`
		at1=`cat CB.txt | grep $usu$ | cut -d " " -f 7`
		at2=`cat CB.txt | grep $usu$ | cut -d " " -f 8`
		at3=`cat CB.txt | grep $usu$ | cut -d " " -f 9`
		at4=`cat CB.txt | grep $usu$ | cut -d " " -f 10`
		nvb=`cat CB.txt | grep $usu$ | cut -d " " -f 2`
		nvb=`cat CB.txt | grep $admin$ | cut -d " " -f 2`
		hptot=$hptotus
		hptota=$hptotad
	fi 
	echo -n "

╔═════════════════════════════════════════════════════════════════════════════╗
║     	        					                      ║
║         $Pokef♂   					            Nv.$nvf      ║
║	 ╔══════════════════════════════════════════════════════════════╗     ║
║     PS ║`cat ../../Sprites/Barra/Barra$Pokef.txt | grep -w $hpf | cut -d " " -f 1,62` ║     ║
║	 ╚══════════════════════════════════════════════════════════════╝     ║
║		                                                   $hpf/$hptota      ║
╚═════════════════════════════════════════════════════════════════════════════╝
"
front=`echo "$Pokef"`front
cat ../../Sprites/$front
back=`echo "$Pokeb"`back
cat ../../Sprites/$back
	echo "
                                                                     ╔═════════════════════════════════════════════════════════════════════════════╗
                                                                     ║     	        					                   ║
                                                                     ║         $Pokeb♂					            Nv.$nvb   ║
                                                                     ║	      ╔══════════════════════════════════════════════════════════════╗     ║
                                                                     ║     PS ║ `cat ../../Sprites/Barra/Barra$Pokeb.txt | grep -w $hpb | cut -d " " -f 1,62`║     ║
                                                                     ║	      ╚══════════════════════════════════════════════════════════════╝     ║
                                                                     ║		                                                        $hpb/$hptot      ║
                                                                     ╚═════════════════════════════════════════════════════════════════════════════╝
                                                                     ╔═════════════════════════════════════════════════════════════════════════════╗
                                                                     ║ ¿Qué debería hacer $Pokeb ?     1.$at1     	3.$at3          
                                                                     ║	    			      2.$at2              4.$at4    	   
                                                                     ╚═════════════════════════════════════════════════════════════════════════════╝
"
}
