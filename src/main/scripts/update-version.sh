#!/bin/bash

cd $(dirname "$0")
cd ../resources/templates/

id="${GO_PIPELINE_NAME}/${GO_PIPELINE_COUNTER}/${GO_STAGE_NAME}/${GO_STAGE_COUNTER}/${GO_JOB_NAME}"
msg="Built by <a href=\"http://bcdemo.gocd.io:8153/go/tab/build/detail/${id}\">GoCD: ${id}</a>"
sed -i -e 's#{{ BUILD_INFO }}#'"${msg}"'#' welcome.html
