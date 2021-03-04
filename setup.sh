#!/bin/sh
git reset --hard
git pull
pipenv sync
pkill screen
screen -S lavalink -dm bash -c "java -jar Lavalink.jar"
screen -S bot -dm bash -c "pipenv shell 'python3 src/bot.py'"
screen -ls
