#!/bin/bash
set -e
# get jq
JQ_BIN=/usr/bin/jq JQ_VERSION=1.6\
    && curl https://github.com/stedolan/jq/releases/download/jq-$JQ_VERSION/jq-linux64 -sLo $JQ_BIN \
    && chmod +x $JQ_BIN

# instnall old version of awscli
yum install -y python3-pip
last_20th_version=$(get_latest_pip_pkg_versions.sh awscli|head -1) 
version=${last_20th_version:-'1.16.238'} # this is last 20th release at 11 Oct 2019
pip3 install awscli==$version
