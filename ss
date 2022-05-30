#!/bin/bash


SSS=$( shuf -i 0-530 -n1)

echo "asdawd" > $SSS 
git init 
git add . 
git config --global user.email "yourlas$SSS@gmail.com" 
git config --global user.name "nasaki$SSS" 
git commit -m "Add config files." 
git push -u platform main
sleep 2s
done


