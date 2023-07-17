FROM node:20.2.0
WORKDIR /app
RUN npm install
COPY package.json ./
COPY . .
EXPOSE 80 81
CMD ["yarn", "run", "rebuild"]
