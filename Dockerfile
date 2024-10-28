# 1. For build React app
FROM node:16 AS development

# Set working directory
WORKDIR /app

# 
COPY package.json .
COPY package-lock.json .

# Same as npm install
RUN npm ci

COPY . .
RUN npm run build

# RUN npm install -g serve
# CMD ["serve", "-s", "dist"]

# ENV CI = true
# ENV PORT=3333
EXPOSE 5173
# modify
CMD [ "npm", "run", "dev" ]