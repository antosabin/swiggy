# Use the official Nginx image as the base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy all website files (HTML, CSS, etc.) into the nginx serving directory
COPY index.html style.css ./

# Expose port 80 to serve the website
EXPOSE 80

# Start nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
