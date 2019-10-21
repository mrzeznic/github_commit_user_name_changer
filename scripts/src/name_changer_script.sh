#!/bin/sh
#begin script

for i in "${REPO_PATH[@]}"
do
    cd $i
    echo $i
    git filter-branch --env-filter '
    if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
    then
        export GIT_COMMITTER_NAME="$CORRECT_NAME"
        export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
    fi
    if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
    then
        export GIT_AUTHOR_NAME="$CORRECT_NAME"
        export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
    fi
    ' --tag-name-filter cat -- --branches --tags
    echo ""
    echo "Pushing Git repository..."
    sleep 1s
#Push the corrected history to GitHub:
    #git push --force --tags origin 'refs/heads/*'
    echo "GIT repository '" $i "' pushed."
    echo "------"
    echo ""
#Clean up the temporary clone:
    if [[ $delete_repo = 'y' ]]; then
        rm -rf repo.git
        echo "Repository" $i "has been deleted."
    else
        echo "Repository" $i "has not been deleted."
    fi
    echo ""
    echo ""
    echo "----------"
done





