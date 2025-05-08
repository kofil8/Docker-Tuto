FROM node:18.16.0
# Set the working directory
WORKDIR /app
# Copy package.json file to the working directory
COPY package.json .
# Run npm install to install dependencies
RUN npm install
# Copy the rest of the application code to the working directory
COPY . ./
# Set environment variables for the application
ENV PORT 3000
# Expose the port the app runs on
EXPOSE ${PORT}
# Start the application
CMD ["node", "index.js"]