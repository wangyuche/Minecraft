#!/bin/bash 
set -e 

exec java -Xmx4096M -Xms1024M -jar server.jar nogui
