#!/usr/bin/env bash

set -x

exec atlas-run-standalone \
  --server confluence \
  --container tomcat7x \
  --product confluence \
  --version 6.0.0-OD-2016.10.0-1050 \
  --data-version 6.0.0-OD-2016.10.0-1050 \
  --bundled-plugins com.atlassian.bundles:json-schema-validator-atlassian-bundle:1.0.4,com.atlassian.upm:atlassian-universal-plugin-manager-plugin:2.21-D20160128T024330,com.atlassian.jwt:jwt-plugin:1.5.9-0019,com.atlassian.plugins:atlassian-connect-plugin:1.1.77 \
  --jvmargs "${JAVA_OPTS}" \
   -DskipAllPrompts=true
