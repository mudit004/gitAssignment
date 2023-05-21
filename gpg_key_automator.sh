#!/bin/bash

function gitlink(){
    git config --global user.signingkey $(1)
    git config --global commit.gpgsign true
}

echo 1 Use pre-existing key
echo 2 Setup new GPG Key
echo 3 exit

read -p "Input: " selection

echo ${selection}

if [[ selection -eq "1" ]]
then
key= $(gpg --list-secret-keys --keyid-format=long | awk '/sec/ {print $2}')

for (( i=1 ; i<${#key} ; i++ )) do
echo ${i} . $((key[${i}]):5:16)


done

rsa_key=$((key[${index}]):5:16)
echo ""
read -p "Select the key you want to use: " index

gpg --armor --export "$rsa_key"

gitlink $rsa_key

elif [[ selection -eq "2" ]] 
then
gpg --gen-key
key= $(gpg --list-secret-keys --keyid-format=long | awk '/sec/ {print $2}')
rsa_key=$(echo ${key[@]} | tail -c 17)
gpg --armor --export "$rsa_key"

gitlink $rsa_key

elif [[ selection -eq "3" ]]
then

break

else
echo Ha chal apne baap ko mat sikha

fi


