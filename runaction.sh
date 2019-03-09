#!/bin/sh

runcmd="reporeleaser --repo $GITHUB_REPOSITORY"

if [ -z "$GITHUB_TOKEN" ]; then
  echo "GITHUB_TOKEN are missing"
  exit 1
else
  runcmd="$runcmd --token $GITHUB_TOKEN"
fi

if [ -z "$ACTION_TYPE" ]; then
  echo "ACTION_TYPE are missing, assuming minor"
  runcmd="$runcmd --release minor"
else
  runcmd="$runcmd --release $ACTION_TYPE"
fi

if [ "$ACTION_DRAFT" = "True" ]; then
  runcmd="$runcmd --draft"
fi

if [ "$ACTION_TEST" = "True" ]; then
  runcmd="$runcmd --test"
fi

runcmd="$runcmd --show_sha"

$runcmd
