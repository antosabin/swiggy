# Use an official Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies first (if applicable)
COPY package.json package-lock.json ./
RUN npm install  # Skip this if not a Node.js project

# Copy the rest of the application files
COPY . .

# Expose the necessary port (optional, depends on your app)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
