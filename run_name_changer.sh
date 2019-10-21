#!/bin/bash

. config.sh

#save runner repository path
runner_path=$(pwd)

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
    echo "-----------------"
    echo "Current values:"
    echo ""
    . $runner_path/scripts/tests/checker_name_changer.sh
    echo "-----------------"
    echo ""
    echo "---SCRIPT RUNS---"
    echo ""
    #. $runner_path/scripts/src/name_changer_script.sh
    echo "-----------------"
    echo "Values after change:"
    echo ""
    . $runner_path/scripts/tests/checker_name_changer.sh
else
    echo "NO RUN"
fi
