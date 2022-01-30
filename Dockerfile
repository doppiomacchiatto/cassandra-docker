FROM cassandra:4.0.1

WORKDIR /opt/scripts
# Copy schema files into /opt/scripts
COPY [ "schema.cql", "keyspace.cql" , "bootstrap.sh", "wait-for-it.sh" , "describe.cql", "./" ]
RUN chmod +x /opt/scripts/*
# Set the entrypoint to the bootstrap script
ENTRYPOINT [ "/opt/scripts/bootstrap.sh" ]

# Run DSE in search mode in the foreground by default
CMD [ "dse", "cassandra", "-s", "-g", "-f" ]
EXPOSE 7000 7001 9042 9160