FROM node:16.17-alpine

# # #ENV NODE_ENV=production
WORKDIR /usr/app
# # #RUN npm install --global pm2
COPY ["package.json","package-lock.json", "./"]
RUN apk add --no-cache git openssh
RUN yarn install
COPY . .
#RUN yarn run build
EXPOSE 3000
# # #USER node
CMD ["yarn","dev"]