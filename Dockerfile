FROM node:20-alpine

WORKDIR /app

# 1️⃣ Dependencies layer 
COPY package*.json ./
RUN npm ci

# 2️⃣ Application code
COPY . .

# 3️⃣ Build step
RUN npm run build

CMD ["node", "index.js"]
