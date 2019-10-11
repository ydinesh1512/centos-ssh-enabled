#!/bin/bash

function remove_.(){
    echo $@ | tr -d '.'
}
latest_version=$(get_latest_pip_pkg_versions.sh awscli|tail -1);
aws --version &> /tmp/installed_version
installed_version=$(cat /tmp/installed_version|awk -F'/| ' -vORS=$'\0' '{print $2}')

if [ $(remove_. $installed_version) == $(remove_. $latest_version) ]; then
    printf "everything is upto date"
else
    printf "awscli installed: $installed_version and but latest is: $latest_version"
    exit 1
fi
