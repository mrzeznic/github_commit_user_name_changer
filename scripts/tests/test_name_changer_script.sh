#!/bin/bash

source git_config_local_script.sh

for f in "${project_path[@]}";
    do
        cd $f
        pwd

        echo $test_string_name
        ${test_string_name}
        #echo $test_string_email
    done
'
##is already
##show name and email of reporitory local settings
##change with script to test credentials
##show name and email of reporitory local settings

##is empty
##show name and email of reporitory local settings
##change with script to test credentials
##show name and email of reporitory local settings