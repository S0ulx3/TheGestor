#!/bin/bash

# Colores
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # Restablecer el color a predeterminado


while true
do
   echo "${YELLOW}===========================================${NC}"
   echo "${RED}Bienvenido al Gestor de tareas${NC}                "
   echo "${RED}1)${NC} Mostrar contenido del directorio actual    "
   echo "${RED}2)${NC} Crear un archivo"
   echo "${RED}3)${NC} Crear un directorio"
   echo "${RED}4)${NC} Mover o renombrar archivo/directorio"
   echo "${RED}5)${NC} Copiar archivo/directorio"
   echo "${RED}6)${NC} Eliminar archivo/directorio"
   echo "${RED}7)${NC} Salir"
   echo "${YELLOW}===========================================${NC}"

   read -p "Ingrese la opcion deseada: " opcion

   case $opcion in
       1) echo
          ls
          ;;
       2)
          read -p "${CYAN}Ingrese el nombre del archivo:${NC} " nombre_archivo
          touch $nombre_archivo
          echo
          echo "${YELLOW}Archivo${NC} ${RED}$nombre_archivo${NC}${YELLOW} creado${YELLOW}"
          ;;

       3)
          read -p "${CYAN}Ingrese el nombre del directorio:${NC} " nombre_directorio
          mkdir $nombre_directorio
          echo
          echo "${YELLOW}Directorio${NC} ${RED}$nombre_directorio${NC} ${YELLOW}creado${NC}"
          ;;

       4)
         read -p "${CYAN}Ingrese nombre del archivo:${NC} " origen
         read -p "${CYAN}Ingrese la nueva ubicacion o nombre:${NC} " destino
         mv $origen $destino
         echo
         echo "${YELLOW}Archivo/directorio${NC} ${RED}$origen${NC} ${YELLOW}movido/renombrado o/a${NC} ${RED}$destino${NC}"
         ;;

       5)
          read -p "${CYAN}Ingrese nombre de archivo/directorio:${NC} " origen
          read -p "${CYAN}Ingrese la ruta donde desea copiar el archivo:${NC} " destino
          cp $origen $destino
          echo
          echo "${YELLOW}Archivo${NC} ${RED}$origen${NC} ${YELLOW}copiado a${NC} ${RED}$destino${NC}"
          ;;

       6)
          read -p "${CYAN}Ingrese el nombre del archivo:${NC} " $nombre_archivo
          rm -rf $nombre_archivo
          echo
          echo "${RED}$nombre_archivo${NC} ${YELLOW}ha sido eliminado${NC}"
          ;;
       7) exit ;;
       *) echo "${RED}Opcion invalida${NC}";;
 esac

echo

done
