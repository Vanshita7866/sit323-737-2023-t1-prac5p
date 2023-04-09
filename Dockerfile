# Use an official Python runtime as a parent image
FROM node:16

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /app
COPY package.json ./
RUN npm install
COPY server.js .
EXPOSE 8080
CMD ["node", "server.js"]
