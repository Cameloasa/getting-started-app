# Use the official Node.js LTS image as the base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
# This allows Docker to install dependencies first (and cache them)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port that the app listens on
EXPOSE 3000

# Define the command to run the app when the container starts
CMD ["npm", "run", "dev"]
