#!/bin/bash

url=$1 # github clone url

if [[  ! -z "$1"  ]] && [[ $url = https://github.com/* ]]
then
  replace="github.com.cnpmjs.org"
  git clone ${url//github.com/$replace}
else
  echo "只支持github https协议"
fi
