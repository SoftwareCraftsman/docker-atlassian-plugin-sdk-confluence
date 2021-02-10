#!/usr/bin/env bash

set -x

CONFLUENCE_VERSION=7.10.2

exec atlas-run-standalone \
  --server confluence \
  --product confluence \
  --version $CONFLUENCE_VERSION \
  --data-version $CONFLUENCE_VERSION \
  --jvmargs "${JAVA_OPTS}" \
   -DskipAllPrompts=true
