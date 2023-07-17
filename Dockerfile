FROM node:20.2.0
WORKDIR /app
RUN yarn install
COPY package.json yarn.lock ./
COPY . .
EXPOSE 80 81
CMD ["yarn", "run", "rebuild"]