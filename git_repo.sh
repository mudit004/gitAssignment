#!/bin/bash

function dataInput(){
    read -p "Name of repo: " repo_name

    read -p "Description of repo: " repo_desc

    echo "file type: "
    echo "1. Private"
    echo "2. Public"
    read -p "select: " repo_type

    echo "Setup using:"
    echo "1. SSH "
    echo "2.HTTPS "
    read -p "your choice: " method
}

function createRepo(){
    curl -L \
    -X POST \
    -H "Accept: application/vnd.github+json" \
    -H "Authorization: Bearer $PAT" \
    -H "X-GitHub-Api-Version: 2022-11-28" https://api.github.com/user/repos \
    -d "{\"name\":\"$repo_name\",\"description\":\"$repo_desc\", \"private\":$type}"
}

if [[ -f credential.env ]]; then
    source credential.env
else
    echo "USERNAME"
    read -p ":" usr_name
    echo "usr_name=$usr_name" >> credential.env
    echo "Personal Access Token"
    read -p ":" PAT
    echo "PAT=$PAT" >> credential.env
    chmod 400 credential.env
fi

dataInput
echo $repo_name
echo $PAT
echo $usr_name

if [[ repo_type -eq 1 ]]; then
    type=true
elif [[ repo_type -eq 2 ]]; then
    type=false
else
    echo "INVALID repo type"
    exit 1
fi

if [[ $method -eq 1 || $method -eq 2 ]]; then
    echo -n ""
else
echo "Invalid method"
exit 1
fi
# createRepo

# curl -L -X POST -H \"Accept: application/vnd.github+json\" -H \"Authorization: Bearer $PAT\" -H \"X-GitHub-Api-Version: 2022-11-28\" https://api.github.com/user/repos -d "{\"name\":\"$repo_name\",\"description\":\"$repo_desc\", \"private\":$type}"

response=$( createRepo )

if [[ "$response" =~ "\"message\": \"name already exists on this account\"" ]]; then
    echo "This repository already exists..."
    dataInput
    createRepo    
fi


#doing first commit
mkdir $repo_name
cd $repo_name
echo "# $repo_name" >> README.md
git init 
git add README.md
git commit -m "first commit"
git branch -M main

if [[ $method -eq 1 ]]; then
    git remote add origin git@github.com:$usr_name/$repo_name.git
elif [[ $method -eq 2 ]]; then
    git remote add origin https://github.com/$usr_name/$repo_name.git
fi

git push -u origin main


 









