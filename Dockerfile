# Use the official Node.js 14 image.
FROM node:14

# Create and change to the app directory.
WORKDIR /usr/src/app

# Copy the package.json and install dependencies.
COPY package*.json ./
RUN npm install

# Copy the app source code.
COPY . .

# Expose the port the app runs on.
EXPOSE 3000

# Run the app.
CMD ["npm", "start"]
