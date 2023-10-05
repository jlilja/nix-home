#!/usr/bin/env bash

aws iam list-account-aliases | jq -r '.AccountAliases[0]'
