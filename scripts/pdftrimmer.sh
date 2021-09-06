#! /bin/bash 

##############################################################################
#Script para recortar la imagen de la pagina de pdf de imagen guardada por 
#matlab
##############################################################################

ext='.pdf' 
for picture in `ls *.pdf` 
    do 
        nuevonombre=$nombre$ext
        echo "Procesando....$picture" 
        echo "New file $nuevonombre" 
        inkscape $picture -Do $nuevonombre 
    done 
     
