FROM node:18.20.8-alpine3.21

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package.json .

# Install dependencies
RUN npm install --production

# Copy application files
COPY graphserver.js .
COPY UScities.json .

# Expose port
EXPOSE 4000

# Start app
CMD ["node", "graphserver.js"]
