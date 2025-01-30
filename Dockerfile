# Use an official Node.js runtime as a parent image
FROM node:18

# Set a working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Set a non-root user for security
RUN useradd -m nodeuser
USER nodeuser

# Expose the application port
EXPOSE 5000

# Use node to start the application
CMD ["node", "index.js"]
