FROM elastic/elasticsearch:8.15.1
LABEL authors="Witold Krak"
LABEL email="witold.krak@gmail.com"

# Optional: Set any environment variables for ElasticSearch
# For example, disabling security for simplicity (not recommended for production):
ENV discovery.type=single-node

# Copy the custom configuration elasticsearch.yml file
COPY elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml

# Expose standart elasticsearch ports
EXPOSE 9200 9300

