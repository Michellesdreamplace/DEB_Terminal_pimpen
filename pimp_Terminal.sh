#!/bin/bash
BENUTZER=$USER
HOMEVERZEICHNIS=$HOME
MYSHELL=$SHELL
echo "Hallo $BENUTZER"
echo "Dein Home-Verzeichnis: $HOMEVERZEICHNIS"
echo "Deine Shell: $MYSHELL"
echo "************************************************************"
echo "    installiere git (falls nicht vorhanden) ..."
echo "    ... um Repositories klonen zu können ..."
echo " ..."
sudo apt install git -y
echo "************************************************************"
echo "    installiere tar (falls nicht vorhanden) ..."
echo "    ... um Dateien entpacken zu können ..."
echo " ..."
sudo apt install tar -y
echo "************************************************************"
echo "    installiere neofetch (falls nicht vorhanden) ..."
echo "    "
echo " ..."
sudo apt install neofetch -y
echo "************************************************************"
echo "    installiere screenfetch (falls nicht vorhanden) ..."
echo "    "
echo " ..."
sudo apt install screenfetch -y
echo "************************************************************"
echo "    klone Dateien zum Terminal pimpen von GitHub ..."
echo " ..."
sudo git clone https://github.com/Michellesdreamplace/DEB_Terminal_pimpen.git $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen/
echo "************************************************************"
echo "    erstelle Sicherungskopie deiner bisherigen .bashrc ..."
echo " ..."

# ---------- WIP ----------

echo "************************************************************"
echo "    entpacke Datei in dein persönlichen Ordner ..."
echo " ..."
sudo tar -xzf $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen/Terminal_pimpen.tar.gz -C $HOMEVERZEICHNIS/
echo "************************************************************"
echo "    aufräumen ..."
echo " ..."
sudo rm -r $HOMEVERZEICHNIS/Downloads/MDP_DEB_Terminal_pimpen
echo "************************************************************"
echo " "
echo "    Fertig ..."
echo " "
echo "  Viel Spaß mit deinem gepimpten Terminal :)"
echo " "
echo "************************************************************"
