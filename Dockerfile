FROM softwarecraftsmen/atlassian-plugin-sdk:8.2.6
MAINTAINER Software Craftsmen GmbH und CoKG <office@software-craftsmen.at>

ENV JAVA_OPTS="-Xms1024m -Xmx5120m"

EXPOSE 1990

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT /docker-entrypoint.sh
