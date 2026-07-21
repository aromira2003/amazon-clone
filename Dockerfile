# Use an official Nginx image as the base image
FROM nginx:alpine

# Copy website files to the Nginx web directory
COPY . /usr/share/nginx/html

# Copy the replacement script
COPY replace_container.sh /usr/local/bin/replace_container.sh

# Give execute permission to the script
RUN chmod +x /usr/local/bin/replace_container.sh

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
