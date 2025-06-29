FROM node:21-alpine
# Install dependencies ie base image is set 

WORKDIR /user/src/app

COPY package*.json ./
RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
# This will run the app in production mode by default


