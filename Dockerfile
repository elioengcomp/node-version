FROM node:6

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Bundle app source
COPY ./app /usr/src/app

# Copy npm configurations
COPY npmrc ~/.npmrc

# Install app dependencies
RUN npm install

# Cleanup Artifactory information
RUN rm ~/.npmrc

EXPOSE 3000

CMD [ "npm", "start" ]
