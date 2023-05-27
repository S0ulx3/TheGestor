#!/bin/bash

while true
do
   echo "==========================================="
   echo "      Bienvenido al Gestor de tareas       "
   echo "1) Mostrar contenido del directorio actual   "
   echo "2) Crear un archivo"
   echo "3) Crear un directorio"
   echo "4) Mover o renombrar archivo/directorio"
   echo "5) Copiar archivo/directorio"
   echo "6) Eliminar archivo/directorio"
   echo "7) Salir"
   echo "==========================================="

   read -p "Ingrese la opcion deseada: " opcion

   case $opcion in
       1) echo
          ls
          ;;
       2)
          read -p "Ingrese el nombre del archivo: " nombre_archivo
          touch $nombre_archivo
          echo
          echo "Archivo $nombre_archivo creado"
          ;;

       3)
          read -p "Ingrese el nombre del directorio: " nombre_directorio
          mkdir $nombre_directorio
          echo
          echo "Directorio $nombre_directorio creado"
          ;;

       4)
         read -p "Ingrese nombre del archivo: " origen
         read -p "Ingrese la nueva ubicacion o nombre: " destino
         mv $origen $destino
         echo
         echo "Archivo/directorio $origen movido/renombrado o/a $destino"
         ;;

       5)
          read -p "Ingrese nombre de archivo/directorio: " origen
          read -p "Ingrese la ruta donde desea copiar el archivo: " destino
          cp $origen $destino
          echo
          echo "Archivo $origen copiado a $destino"
          ;;

       6)
          read -p "Ingrese el nombre del archivo: " $nombre_archivo
          rm -rf $nombre_archivo
          echo
          echo "$nombre_archivo ha sido eliminado"
          ;;
       7) exit ;;
       *) echo "Opcion invalida";;
 esac

echo

done
