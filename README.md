#TheGestor.sh
Es un Gestor de Archivos programado en bash

Este es el código y sus funciones:


------------------------------------------------------------------------------------------------------------------------------------------------------------------
#!/bin/bash

#Colores
      CYAN='\033[0;36m'
      GREEN='\033[0;32m'
      RED='\033[0;31m'
      YELLOW='\033[0;33m'
      NC='\033[0m' # Restablecer el color a predeterminado

#Menú interactivo con sus funciones

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
   #Opcion 1: Listar contenido en directorio actual
       1) echo
          ls
          ;;
   #Opcion 2: Crear un archivo
       2)
          read -p "${CYAN}Ingrese el nombre del archivo:${NC} " nombre_archivo
          touch $nombre_archivo
          echo
          echo "${YELLOW}Archivo${NC} ${RED}$nombre_archivo${NC}${YELLOW} creado${NC}"
          ;;
   #Opcion 3: Crear carpeta
       3)
          read -p "${CYAN}Ingrese el nombre del directorio:${NC} " nombre_directorio
          mkdir $nombre_directorio
          echo
          echo "${YELLOW}Directorio${NC} ${RED}$nombre_directorio${NC} ${YELLOW}creado${NC}"
          ;;
   #Opcion 4: Mover o Renombrar Archivo
       4)
         read -p "${CYAN}Ingrese nombre del archivo:${NC} " origen
         read -p "${CYAN}Ingrese la nueva ubicacion o nombre:${NC} " destino
         mv $origen $destino
         echo
         echo "${YELLOW}Archivo/directorio${NC} ${RED}$origen${NC} ${YELLOW}movido/renombrado o/a${NC} ${RED}$destino${NC}"
         ;;
   #Opcion 5: Copiar Archivo a un Directorio
       5)
          read -p "${CYAN}Ingrese nombre de archivo/directorio:${NC} " origen
          read -p "${CYAN}Ingrese la ruta donde desea copiar el archivo:${NC} " destino
          cp $origen $destino
          echo
          echo "${YELLOW}Archivo${NC} ${RED}$origen${NC} ${YELLOW}copiado a${NC} ${RED}$destino${NC}"
          ;;
   #Opcion 6: Eliminar archivo o directorio
       6)
          read -p "${CYAN}Ingrese el nombre del archivo:${NC} " $nombre_archivo
          rm -rf $nombre_archivo
          echo
          echo "${RED}$nombre_archivo${NC} ${YELLOW}ha sido eliminado${NC}"
          ;;
   #Opcion 7: Salir       
       7) exit ;;
       *) echo "${RED}Opcion invalida${NC}";;
        esac
        echo
        done
------------------------------------------------------------------------------------------------------------------------------------------------------------------
