# Start Generation Here
# Start of Selection
FROM node:lts
# End of Selection

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# コマンドラインでアクセスできるようにするための設定
ENTRYPOINT ["/bin/bash"]
# End of Selection
