#!/bin/bash

source .env

URL="https://api.telegram.org/bot$TOKEN/sendMessage"
TIME="10"

TEXT="$2: $1%0A%0AProject:+$CI_PROJECT_NAME%0AURL:+$CI_PROJECT_URL/pipelines/$CI_PIPELINE_ID/%0ABranch:+$CI_COMMIT_REF_SLUG"

curl -s --max-time $TIME -d "chat_id=$CHAT_ID&text=$TEXT" $URL > /dev/null

