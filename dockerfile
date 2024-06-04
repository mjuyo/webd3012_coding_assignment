# Base image
FROM node:14-alpine
 
# Set the working directory
WORKDIR /juyo_marco_site

# Add `/app/node_modules/.bin` to $PATH
ENV PATH /juyo_marco_site/node_modules/.bin:$PATH

# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install --silent
 
# Copy the source code
COPY . .
 
# Build the React app
RUN npm run build
 
# Set the environment variable to serve the built files
ENV HOST=0.0.0.0
ENV PORT=7775
 
# Expose the desired port
EXPOSE 7775
 
# Start the development server
CMD ["npm", "start"]
