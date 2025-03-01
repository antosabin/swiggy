# Use a base Node.js image (if using Node.js)
FROM node:18

# Set working directory
WORKDIR /app

# Copy only necessary files (excluding package-lock.json)
COPY . .

# Expose any required port (e.g., 3000 for a web app)
EXPOSE 3000

# Command to run your application
CMD ["node", "server.js"]
