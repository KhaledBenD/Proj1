#!/bin/sh
if [ $# != 4 ]
  then
    echo "Expected arguments, please check the help : initdev -help"
exit 1 
fi

so="-help"

if  [ "$1" = "$so" ]
then
echo "-Name : Affcher le nom de l'application et une petite description."
echo "-Syntax : Afficher la syntaxe d'utilisation de la commande initdev." 
echo "-args : Lister les arguments et donner une description de chaque argument.   "
echo "-author : Afficher le nom et l'email de l'auteur de l'application."

else 
mkdir $1
cd $1
mkdir bin
mkdir licenses
mkdir makfiles
mkdir sources

case $3 in 
C) cp ~/main.c ~/$1
   break
;;
C++) cp ~/main.c ~/$1
   break
;;

PY) cp ~/main.cpp ~/$1
   break
;;

Latex) cp ~/latexMin.tex ~/$1
   break
;;
BEAMER) cp ~/beamer.tex ~/$1
   break
;;

	
*) echo "Uknown arguments, please check the help : initdev -help"
exit 1
break 
;;
esac

case $2 in 
GPL) cp ~/GPL ~/$1/licenses
   break
;;
MIT) cp ~/MIT ~/$1/licenses
   break
;;

	
*) echo "Uknown arguments, please check the help : initdev -help"
exit 1
break 
;;
esac
cd $1 
git init

fi
exit 0

