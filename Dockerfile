# This is the base image. In this case, we are taking a Linux image with node 11. This image is pulled from Docker Hub. https://hub.docker.com/_/node/
FROM node:11

# This will be the directory in which commands such as COPY and RUN will be run.
WORKDIR /app

#This means we copy everything in the current folder (our React application) into the folder defined previously in WORKDIR
COPY . .

# RUN means we run commands in the command line during build time. In this case, we have npm, because it is included in the base docker image. If we didn't have it, we'd have to use RUN to run commands to install node.
RUN npm install

# CMD defines a run-time operation. In this case we want to start the webserver
CMD ["npm", "run", "start"]