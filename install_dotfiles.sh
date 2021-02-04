#!/bin/bash 

txtblu='\e[0;34m' # Blue 

#Instalacion de dependencias de i3wm, vim 

echo -e "

${txtblu}

Instalando dependecias " 

sudo apt update 
sudo apt install xclip 
sudo apt install imagemagick 
sudo apt install feh 


