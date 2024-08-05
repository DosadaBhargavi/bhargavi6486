#use the official node.js image
#https://hub.docker.com/_node

FROM node:14

#create or change the app directory
WORKDIR /usr/src/app

#copy dependency
COPY packaege*.json ./

#installation of dependency
RUN npm install --only=production

#Copy the local code
COPY . .

# command to run the services while container execution
CMD ["node","index.js"]