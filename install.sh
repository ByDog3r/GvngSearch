#!/bin/bash
#       	Autor : @ByDog3r
#   	Instalador de GvngSearch
# https://github.com/ByDog3r/GvngSearch

function banner(){

	echo -e "${rojo}  _____           _        _ _ "
	echo -e " |_   _|         | |      | | |"
	echo -e "   | |  _ __  ___| |_ __ _| | |"
	echo -e "   | | | '_ \/ __| __/ _\` | | |"
	echo -e "  _| |_| | | \__ \ || (_| | | |"
	echo -e " |_____|_| |_|___/\__\__,_|_|_|"
	echo -e "${verde}          Gvng Search V.1.0.2  "

}

final="\033[0m"; verde="\033[1;32m"; rojo="\033[0;31m"; blanco="\033[1;37m"; naranja="\033[0;33m"; negrita="\033[2m"; cursiva="\033[3m";parpadeo="\033[5m"

trap ctrl_c int

	function ctrl_c(){
	clear
	banner
	echo -e "\n${verde}[${blanco}${parpadeo}*${final}${verde}] Usted esta saliendo del programa. ${blanco}"
	sleep 3
	clear
	exit 1

}

clear; echo -e "\n${verde}[${blanco}*${verde}]${rojo} Bienvenido al instalador de paquetes de GvngSearch${final}"; sleep 1.4s; clear; banner; sleep 0.7s
echo -e "\n${verde}[${blanco}1${verde}]${final} Instalar GvngSearch para Termux.\n"; sleep 0.7s
echo -e "${verde}[${blanco}2${verde}]${final} Instalar GvngSearch para Linux.\n"; sleep 0.7s
read -p $'\033[0;31mIntroduzca la opción que desea instalar \033[1;32m[\033[5m\033[1;37m?\033[0m\033[1;32m]: ' opcion
	case $opcion in

		1) echo -e "\n${verde}[${blanco}*${verde}] ${rojo}Instalando GvngSearch para Termux, espere un momento.${final}"
			apt update && apt upgrade -y 2> /dev/null
			pkg install dnsutils -y 2> /dev/null
			pkg install curl -y 2> /dev/null
			base64 -di .aa > gvngs.sh
			clear; banner
			echo -e "\n${verde}[${blanco}*${verde}]${final} Se ha instalado correctamente..."
			sleep 1.3s; rm install.sh && rm -r -f .git && rm README.md  && rm .aa && rm .aaa
			chmod +x gvngs.sh; clear; exit
		;;

		2) echo -e "\n${verde}[${blanco}*${verde}] ${rojo}Instalando GvngSearch para Linux, espere un momento.${final}"
			apt update && apt upgrade -y 2> /dev/null
			apt install dnsutils -y 2> /dev/null
			apt install curl -y 2> /dev/null
			base64 -di .a > gvngs.sh
			clear; banner
			echo -e "\n${verde}[${blanco}*${verde}]${final} Se ha instalado correctamente..."
			sleep 1.3s; rm install.sh && rm -r -f .git && rm README.md && rm .aa && rm .aaa
			chmod +x gvngs.sh; clear; exit
		;;

		*)banner
			echo -e "\n${verde}[${blanco}*${verde}]${final} La opción que ha ingresado no existe"
		;;
	esac
