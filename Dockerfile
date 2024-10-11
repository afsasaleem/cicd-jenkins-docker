# Use official Node.js image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install --production

# Copy app source code
COPY . .

# Expose the app's port
EXPOSE 3000

# Command to run the app
CMD ["node", "index.js"]

