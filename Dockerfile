FROM softwarecraftsmen/atlassian-plugin-sdk
MAINTAINER Software Craftsmen GmbH und CoKG <office@software-craftsmen.at>

ENV JAVA_OPTS="-Xms1024m -Xmx5120m -DskipAllPrompts=true"

EXPOSE 1990

CMD atlas-run-standalone \
  --container tomcat7x \
  --product confluence \
  --version 6.0.0-OD-2016.10.0-1050 \
  --data-version 6.0.0-OD-2016.10.0-1050 \
  --bundled-plugins com.atlassian.bundles:json-schema-validator-atlassian-bundle:1.0.4,com.atlassian.upm:atlassian-universal-plugin-manager-plugin:2.21-D20160128T024330,com.atlassian.jwt:jwt-plugin:1.5.9-0019,com.atlassian.plugins:atlassian-connect-plugin:1.1.77 \
  --jvmargs ${JAVA_OPTS}

