#!/bin/bash

function gitlink(){
    git config --global user.signingkey $1
    git config --global commit.gpgsign true
}

echo 1 Use pre-existing key
echo 2 Setup new GPG Key
echo 3 exit

read -p "Input: " selection

# echo ${selection}

if [[ selection -eq "1" ]]
then
key=($(gpg --list-secret-keys --keyid-format=long|awk '/sec/{print $2}'))

for (( i=0 ; i<${#key[@]} ; i++ )) do
rsa=${key[$i]}
echo $i  "."  ${rsa:8:16}


done

read -p "Select the key you want to use: " index

keyParse=${key[$index]}

rsa_key=${keyParse:8:16}

gpg --armor --export $rsa_key

gitlink $rsa_key

elif [[ selection -eq "2" ]] 
then
gpg --full-generate-key
key=$(gpg --list-secret-keys --keyid-format=long | awk '/sec/ {print $2}')
rsa_key=$(echo ${key[@]} | tail -c 17)
gpg --armor --export $rsa_key

gitlink $rsa_key

else
echo Bye!!

fi