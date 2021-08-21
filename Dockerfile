FROM node:14.17.5

RUN mkdir /myapp

# Create application directory
WORKDIR /myapp

COPY ./package.json /myapp/package.json
COPY ./package-lock.json /myapp/package-lock.json

RUN npm install
RUN npm install -g nodemon

# Bundle application source
COPY . /myapp

EXPOSE 8080

CMD [ "nodemon", "app.js" ]
