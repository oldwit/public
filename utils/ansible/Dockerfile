# Use the official Alpine as the base image
FROM alpine/ansible:2.17.0
LABEL authors="Witold Krak"
LABEL email="witold.krak@gmail.com"

# Add any additional dependencies or customizations here
RUN apk update && apk add --no-cache openssh-client sshpass

# Set a working directory
WORKDIR /app

# Copy your application or scripts if needed
# COPY ./your-app /app

# Set default command (optional, depending on your use case)
ENTRYPOINT ["ansible"]