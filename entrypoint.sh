#!/bin/sh
set -e

if [ -z "${INPUT_PASSWORD:-}" ]; then
  echo "::error::Required input 'password' is missing"
  exit 1
fi

echo "Setting login credentials"
echo "::add-mask::$INPUT_PASSWORD"
echo "CONVOX_PASSWORD=$INPUT_PASSWORD" >> $GITHUB_ENV
echo "CONVOX_HOST=$INPUT_HOST" >> $GITHUB_ENV