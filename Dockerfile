# Use Ubuntu as the base image
FROM ubuntu:20.04

# Set environment variables to avoid prompts during installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install NGINX
RUN apt-get update && apt-get install -y nginx && apt-get clean

# Set the working directory
WORKDIR /var/www/html

# Copy your index.html file to the default NGINX web directory
COPY index.html /var/www/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]

