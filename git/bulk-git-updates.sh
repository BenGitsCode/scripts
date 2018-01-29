#!/bin/bash -e

REPOS=(
/Users/me/repo1
/Users/me/repo2
/Users/me/repo3
) 

echo push, pull or commit?

read -r input

if [ $input -eq "commit" ]
then
    for i in “${REPOS[@]}”
    do
        cd $i
        git add . -A
        git commit -m "auto commit backup point"
        echo "Moving to Next REPO...
         "
        sleep 2
    done 

else 
for i in “${REPOS[@]}”
do
    cd $i
    git $input 
    echo "Moving to Next REPO...
     "
    sleep 2
    done 
fi
