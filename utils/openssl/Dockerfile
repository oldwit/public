# Use the official Alpine as the base image
FROM alpine:latest
LABEL authors="Witold Krak"
LABEL email="witold.krak@gmail.com"

# Add edge/community repository for OpenSSL 3.x
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
Run echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# Update apk package list and install OpenSSL 3.x
RUN apk update && apk add --no-cache openssl=3.3.2-r1

# Set a working directory
WORKDIR /app

# Copy your application or scripts if needed
# COPY ./your-app /app

# Set default command (optional, depending on your use case)
ENTRYPOINT ["openssl"]
