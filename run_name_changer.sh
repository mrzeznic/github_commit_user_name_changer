#!/bin/bash

. config.sh


echo "Configured values:"
echo ""
echo "  OLD_EMAIL: "$OLD_EMAIL
echo "  CORRECT_NAME: "$CORRECT_NAME
echo "  CORRECT_EMAIL: "$CORRECT_EMAIL
echo "  DELETE_REPO: "$DELETE_REPO

echo "  REPO_PATH: "
for i in "${REPO_PATH[@]}"
do
    echo "      "$i
done

read -r -p "Are you sure do you want to run name changer for git commits? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
    echo "SCRIPT RUNS"
else
    echo "NO RUN"
fi
