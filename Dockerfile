# Use official Node.js 14 image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install dependencies
RUN npm install

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
