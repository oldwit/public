# Use Kibana version 8.15.1 as the base image
FROM kibana:8.15.1

# Set environment variables (Optional)
# You can configure Kibana through environment variables, for example:
# ENV ELASTICSEARCH_HOSTS="http://elasticsearch.util:9200"

# If you need to copy additional config files or customizations
# COPY ./config/kibana.yml /usr/share/kibana/config/kibana.yml

# Expose the default Kibana port
EXPOSE 5601

# Start Kibana
CMD ["bin/kibana"]