FROM logstash:8.15.1
LABEL authors="Witold Krak"
LABEL email="witold.krak@gmail.com"

# Optional: Set any environment variables for ElasticSearch
# For example, disabling security for simplicity (not recommended for production):
ENV discovery.type=single-node

# Copy the custom configuration logsatsh.yml
COPY config/logstash.yml /usr/share/logstash/config/logstash.yml

# Copy the pipeline elasticsearch.yml file where pipelines are defined - not needed when volume for pipeline is mounted.
# COPY pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf

# Expose the default port for Logstash (5044 for Beats, 9600 for HTTP monitoring API)
EXPOSE 5044 9600 8080

