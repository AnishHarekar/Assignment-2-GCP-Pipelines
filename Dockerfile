# Step 1: Use the official Node.js image as a base
FROM node:14

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json (or yarn.lock) into the container
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the app's files into the container
COPY . .

# Step 6: Expose the port the app will run on
EXPOSE 3000

# Step 7: Command to run the app when the container starts
CMD ["npm", "start"]
