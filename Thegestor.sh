#!/bin/bash

# Definir colores
color_reset="\e[0m"
color_yellow="\e[33m"
color_cyan="\e[36m"
color_green="\e[32m"
color_red="\e[31m"

while true
do
    echo -e "${color_red}Bienvenido al gestor de archivos${color_reset}"
    echo -e "${color_cyan}1. Mostrar contenido del directorio actual"
    echo -e "2. Crear un archivo"
    echo -e "3. Crear un directorio"
    echo -e "4. Mover o renombrar archivo/directorio"
    echo -e "5. Copiar archivo/directorio"
    echo -e "6. Eliminar archivo/directorio"
    echo -e "7. Salir${color_reset}"

    read -p "Ingrese la opción deseada: " opcion

    case $opcion in
        1) echo
           ls ;;
        2)
            echo
            read -p "Ingrese el nombre del archivo: " nombre_archivo
            touch $nombre_archivo
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo creado:${color_reset} ${color_red}$nombre_archivo${color_reset}"
            ;;
        3)
            echo
            read -p "Ingrese el nombre del directorio: " nombre_directorio
            mkdir $nombre_directorio
            2>/dev/null
            echo
            echo -e "${color_cyan}Directorio creado:${color_reset} ${color_red}$nombre_directorio${color_reset}"
            ;;
        4)
            echo
            read -p "Ingrese el nombre del archivo/directorio: " origen
            echo
            read -p "Ingrese la nueva ubicación/nombre: " destino
            mv $origen $destino
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$origen${color_reset} ${color_cyan}movido/renombrado a${reset_color} ${color_red}$destino${color_reset}"
            ;;
        5)
            echo
            read -p "Ingrese el nombre del archivo/directorio: " origen
            echo
            read -p "Ingrese la ubicación de destino: " destino
            cp -r $origen $destino
            2>/dev/null
            echo
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$origen${color_reset} ${color_cyan}copiado a${color_reset} ${color_red}$destino.${color_reset}"
            ;;
        6)
            echo
            read -p "Ingrese el nombre del archivo/directorio: " nombre_archivo
            echo
            rm -rf $nombre_archivo
            2>/dev/null
            echo -e "${color_cyan}Archivo/Directorio${color_reset} ${color_red}$nombre_archivo${color_reset} ${color_cyan}eliminado.${color_reset}"
            ;;
        7) exit ;;
        *) echo -e "${color_red}Opción inválida${color_reset}";;
    esac

    echo
done
