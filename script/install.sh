#!/bin/bash

url="https://gitee.com/ryan-bin/git-cclone/raw/master/git-cclone.sh"
path="/usr/local/bin"
save="${path}/git-cclone"


if command -v "wget" > /dev/null 2>&1; then
    wget -O $save "${url}"
else
    curl –o $save "${url}"
fi

chmod 755 ${save}