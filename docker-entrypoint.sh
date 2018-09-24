#!/usr/bin/env bash

set -x

CONFLUENCE_VERSION=6.1.0

exec atlas-run-standalone \
  --server confluence \
  --container tomcat8x \
  --product confluence \
  --version $CONFLUENCE_VERSION \
  --data-version $CONFLUENCE_VERSION \
  --jvmargs "${JAVA_OPTS}" \
   -DskipAllPrompts=true
