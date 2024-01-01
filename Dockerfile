# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Install the 'express' dependency
RUN npm install express --save

# Copy the application code to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]
