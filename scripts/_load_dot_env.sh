#!/bin/bash

PATH_TO_DOT_ENV=$1

if [ -f ${PATH_TO_DOT_ENV} ]; then
  echo "Using .env file at ${PATH_TO_DOT_ENV}."
  set -a
  source $1
  set +a
else
  echo ".env file at ${PATH_TO_DOT_ENV} does not exist. Environment variables are expected to be set in another way."
fi

ENV_VARS=$(cat ./.env.template | sed 's/\=.*//' | grep . -)

any_missing=false
while IFS= read -r ENV_VAR; do
  if [[ -z "${!ENV_VAR}" ]]; then
    echo "$ENV_VAR environment variable is not set."
    any_missing=true
  fi
done <<< "$ENV_VARS"

if $any_missing ; then
  echo ""
  echo "ERROR: One or more environment variables were not set."
  exit 1
fi
