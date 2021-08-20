FROM node:latest

RUN mkdir -p /app/src

WORKDIR /app/src

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]

docker build -t reactapp:latest
docker run -t reactapp:latest
docker login -u wengkhan
password:

docker tag image wengkhan/reactapp
docker push ...