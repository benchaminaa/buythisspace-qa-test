FROM node:12-alpine3.10

#Node and npm version check
RUN echo  " node version:    $(node -v) \n" \
  "npm version:     $(npm -v) \n" \
  "user:            $(whoami) \n" 

#Set work directory. 
WORKDIR /user/oohmedia/apitests


# Install dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

#Install dependencies based on package.json and package-lock.json
RUN npm install

#Copy project content to work directory
COPY . .

#Sets docker container excutable.
ENTRYPOINT ["npm", "run"]