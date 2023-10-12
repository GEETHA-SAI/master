# Use a lightweight base image with a web server (Nginx, for example)
FROM nginx:alpine

# Copy your HTML file into the default web server directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
