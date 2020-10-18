#!/bin/bash

mkdir /srv/uploads/
chown www-data:www-data /srv/uploads

sudo apt-get install mp3wrap
sudo apt-get install mp3info


cd /srv/uploads/
for f in *; do mv "$f" `echo $f | tr ' ' '_'`; done
numberone=$(ls 01*)
echo "$numberone<br>"
sleep 1
artist=$(ffprobe -loglevel error -show_entries format_tags=artist -of default=noprint_wrappers=1:nokey=1 "$numberone")
album=$(ffprobe -loglevel error -show_entries format_tags=album -of default=noprint_wrappers=1:nokey=1 "$numberone") 
echo "$artist"
sleep 1
echo "$album<br><br><br>"
sleep 1
echo "Die Datei wird nun zusammengefügt.<br>"
allfiles=$(ls)
ls *.mp3 | \
    sed -e "s/\(.*\)/file '\1'/" | \
    ffmpeg -protocol_whitelist 'file,pipe' -f concat -safe 0 -i - -c copy -metadata title="$album" -metadata album="$album" -metadata artist="$artist" "$album".mp3
echo "Lösche die alten Dateien<br><br><br>"
rm $allfiles
echo "<h2>Es wurde eine neue Hörspieldatei geboren. Lasst sie uns in das Abspielgerät einlesen und uns dann an den schönen Klängen erfreuen.</h2><br><br>"
echo "Das nächste Skript wird gestartet: create_playlist<br>"
/var/www/html/sh/create_playlist.sh
echo "Rödel, Rödel, Rödel. <br>"
echo "Auch das wurde erfolgreich erledigt. Du kannst dieses Fenster jetzt schließen und die Nachbarn mit dem Krach der Hörbox nerven."
