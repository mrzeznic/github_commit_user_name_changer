#!/bin/sh
#begin script
. ../../config.sh


for i in "${repo_path[@]}"
do
    cd $i
    git filter-branch --env-filter '
    OLD_EMAIL="your-old-email@example.com"
    CORRECT_NAME="Your Correct Name"
    CORRECT_EMAIL="your-correct-email@example.com"

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

#Push the corrected history to GitHub:
    git push --force --tags origin 'refs/heads/*'

#Clean up the temporary clone:
    if [$delete_repo = 'y']; then
        rm -rf repo.git
    else
        echo "Repository has not been deleted."
    fi
done





