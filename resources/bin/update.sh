#!/bin/bash
# Script for checking for updates 

ADDON_VERSION=$1
echo $ADDON_VERSION
kodi-send --action=Notification"(Gamestarter,$ADDON_VERSION,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"

touch /storage/.kodi/addons/script.gamestarter/resources/bin/updated
touch /storage/.kodi/addons/script.gamestarter/resources/bin/updated_$ADDON_VERSION
#rm /storage/.kodi/addons/script.gamestarter/resources/bin/updated
rm /storage/.kodi/addons/script.gamestarter/resources/bin/update.sh
# kodi-send --action=Notification"(Gamestarter,Gamestarter is up to date,6000,/storage/.kodi/addons/script.gamestarter/icon.png)"
