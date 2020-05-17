# Base docker image that contains node
FROM node:13-alpine

# Create a directory that will store source code for the application
# and change the current working directory to it
WORKDIR /usr/src/my-frist-app

# Copy package.json and package-lock.json file into the working directory
COPY package*.json ./

# Install the dependencies our application needs
RUN npm install

# Copy the code for our application
COPY . ./

# Open up the port 3000 that our application listens to.
# This is necessary so that we can access the application running inside
# docker from the host machine.
EXPOSE 3000

# The command that starts the server
CMD ["npm", "start"]