#!/bin/bash

#. ./../../dev_config.sh
for f in "${REPO_PATH[@]}";
    do
        cd $f
        cd .git/
        echo "Path: " $(pwd)
        echo ""
        grep -Er --color=always $OLD_EMAIL
        echo "..."
        echo ""
    done

##is already
##show name and email of reporitory local settings
##change with script to test credentials
##show name and email of reporitory local settings

##is empty
##show name and email of reporitory local settings
##change with script to test credentials
##show name and email of reporitory local settings