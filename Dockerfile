# Use Node.js 14 base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json ./
COPY package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose a volume for data
VOLUME /usr/src/app/data

# Default command to start the application
CMD ["node", "app.js"]
