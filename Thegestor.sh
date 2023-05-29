#!/bin/bash

# Definir colores
color_reset="\e[0m"
color_yellow="\e[33m"
color_cyan="\e[36m"
color_green="\e[32m"
color_red="\e[31m"

# ANSI

RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
YELLOW='\033[33m'
NC='\033[0m' # Restablecer color

while true
do
    echo -e "${RED}|-------------------------------------------------|${NC}"
    echo -e "${RED}|            Bienvenido a ${GREEN}TheGestor${NC}               ${RED}|${NC}"
    echo -e "${RED}| 1. ${NC}${BLUE} Mostrar contenido del directorio actual     ${RED}|${NC}"
    echo -e "${RED}| 2.           ${NC}${BLUE} Crear un archivo                  ${RED}|${NC}"
    echo -e "${RED}| 3.         ${NC}${BLUE} Crear un directorio                 ${RED}|${NC}"
    echo -e "${RED}| 4. ${NC}${BLUE} Mover o renombrar archivo/directorio        ${RED}|${NC}"
    echo -e "${RED}| 5.       ${NC}${BLUE} Copiar archivo/directorio             ${RED}|${NC}"
    echo -e "${RED}| 6.      ${NC}${BLUE} Eliminar archivo/directorio            ${RED}|${NC}"
    echo -e "${RED}| 7.               ${NC}${BLUE} Salir${NC}                         ${RED}|${NC}"
    echo -e "${RED}|-------------------------------------------------|${NC}"
    echo
    read -p "$(echo -e "${YELLOW}Ingrese la opción deseada:${NC} ")" opcion

    case $opcion in
        1) echo
           ls ;;
        2)
            echo
            read -p "$(echo -e "${YELLOW}Ingrese el nombre del archivo:${NC} ")" nombre_archivo
            touch $nombre_archivo
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo creado:${color_reset} ${color_red}$nombre_archivo${color_reset}"
            ;;
        3)
            echo
            read -p "$(echo -e "${YELLOW}Ingrese el nombre del directorio:${NC} ")" nombre_directorio
            mkdir $nombre_directorio
            2>/dev/null
            echo
            echo -e "${color_cyan}Directorio creado:${color_reset} ${color_red}$nombre_directorio${color_reset}"
            ;;
        4)
            echo
            read -p "$(echo -e "${YELLOW}Ingrese el nombre del archivo/directorio:${NC} ")" origen
            echo
            read -p "$(echo -e "${YELLOW}Ingrese la nueva ubicación/nombre:${NC} ")" destino
            mv $origen $destino
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$origen${color_reset} ${color_cyan}movido/renombrado a${reset_color} ${color_red}$destino${color_reset}"
            ;;
        5)
            echo
            read -p "$(echo -e "${YELLOW}Ingrese el nombre del archivo/directorio:${NC} ")" origen
            echo
            read -p "$(echo -e "${YELLOW}Ingrese la ubicación de destino:${NC} ")" destino
            cp -r $origen $destino
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$origen${color_reset} ${color_cyan}copiado a${color_reset} ${color_red}$destino.${color_reset}"
            ;;
        6)
            echo
            read -p "$(echo -e "${YELLOW}Ingrese el nombre del archivo/directorio:${NC} ")" nombre_archivo
            echo
            rm -rf $nombre_archivo
            2>/dev/null
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$nombre_archivo${color_reset} ${color_cyan}eliminado.${color_reset}"
            ;;
        7)
          echo
          echo -e "${RED}[!]${NC}${YELLOW} Saliendo... ¡Vuelva Pronto!${NC}"
          exit ;;
        *)
          echo
          echo -e "${color_red}Opción inválida${color_reset}";;
    esac

    echo
done
