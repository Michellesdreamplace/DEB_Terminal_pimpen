#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHTGREY='\033[0;37m'
NORMAL='\033[0;39m'

BENUTZER=$USER
HOMEVERZEICHNIS=$HOME
MYSHELL=$SHELL
echo "$PURPLE Hallo $BENUTZER"
echo "$PURPLE Dein Home-Verzeichnis: $HOMEVERZEICHNIS"
echo "$PURPLE Deine Shell: $MYSHELL"
echo "$GREEN ************************************************************"
echo "$GREEN     installiere git (falls nicht vorhanden) ..."
echo "$GREEN     ... um Repositories klonen zu können ..."
echo "$GREEN  ... $NORMAL"
sudo apt install git -y
echo "$GREEN ************************************************************"
echo "$GREEN     installiere tar (falls nicht vorhanden) ..."
echo "$GREEN     ... um Dateien entpacken zu können ..."
echo "$GREEN  ... $NORMAL"
sudo apt install tar -y
echo "$GREEN ************************************************************"
echo "$GREEN     installiere neofetch (falls nicht vorhanden) ..."
echo "$GREEN     "
echo "$GREEN  ... $NORMAL"
sudo apt install neofetch -y
echo "$GREEN ************************************************************"
echo "$GREEN     installiere screenfetch (falls nicht vorhanden) ..."
echo "$GREEN     "
echo "$GREEN  ... $NORMAL"
sudo apt install screenfetch -y
echo "$GREEN ************************************************************"
echo "$GREEN     klone Dateien zum Terminal pimpen von GitHub ..."
echo "$GREEN  ... $NORMAL"
sudo git clone https://github.com/Michellesdreamplace/DEB_Terminal_pimpen.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen/
echo "$GREEN ************************************************************"
echo "$GREEN     erstelle Sicherungskopie deiner bisherigen .bashrc ..."
echo "$GREEN  ... $NORMAL"

# ---------- WIP ----------

echo "$GREEN ************************************************************"
echo "$GREEN     entpacke Datei in dein persönlichen Ordner ..."
echo "$GREEN  ... $NORMAL"
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen/Terminal_pimpen.tar.gz -C $HOMEVERZEICHNIS/
echo "$GREEN ************************************************************"
echo "$GREEN     aufräumen ..."
echo "$GREEN  ... $NORMAL"
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen
echo "$CYAN ************************************************************"
echo "$CYAN  "
echo "$CYAN     Fertig ..."
echo "$CYAN  "
echo "$CYAN   Viel Spaß mit deinem gepimpten Terminal :)"
echo "$CYAN  "
echo "$CYAN ************************************************************ $NORMAL"
