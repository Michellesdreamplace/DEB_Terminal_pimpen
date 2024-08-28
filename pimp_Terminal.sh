#!/bin/bash
BENUTZER=$USER
echo "Huhu $BENUTZER"
HOMEVERZEICHNIS=$HOME
echo "Dein Home-Verzeichnis ist: $HOMEVERZEICHNIS"
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo "    und finde defekte Pakete ..."
echo " ..."
sudo apt update --fix-missing
echo "************************************************************"
echo "    alle vorhandene defekte Paketen finden und reparieren ..."
echo " ..."
sudo apt install -f
echo "************************************************************"
echo "    lese Paketdatenbank (Repository-Index) neu ein"
echo " ..."
sudo apt update
echo "************************************************************"
echo "    Installierte Pakete werden auf eine neuere Version aktualisiert ..."
echo "    ... um geänderte Abhängigkeiten zu erfüllen,"
echo "    werden ge­ge­be­nen­falls auch neue Pakete installiert ..."
echo " ..."
sudo apt upgrade -y
echo "************************************************************"
echo "    bereinige System von nutzlosen Paketen ..."
echo "    deinstalliere alle automatisch installierten Pakete,"
echo "    die keine Abhängigkeiten mehr zu anderen Paketen haben"
echo "    und deshalb nicht mehr benötigt werden ..."
echo " ..."
sudo apt autoremove -y
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

# ---------- TO-DO ----------

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