# Angular 4 Typescript Demo deployed with Docker

## Run the container as a live development environment

If you haven't done an `npm install` yet you can let Docker do it for you.
`docker run -d --rm -w /opt -v $(pwd):/opt -p 3000:3000 --name angulartut node:alpine npm install --production`

From here run the below to standup the container. Any files you change will now get picked up by browsersync running in the container and live update the site for you when viewed on port 3000 of your docker host.
`docker run -d --rm -w /opt -v $(pwd):/opt -p 3000:3000 --name angulartut node:alpine npm start`

## Get running with the dockerfile

`docker build -t angulartut:1.0 -t angulartut:latest` will build the Dockerfile as is, this includes an `npm install` run in the build itself.

From here running `docker run -p 8080:3000 angulartut` will start the Docker image you've just built on Docker host and expose the 8080 port for viewing. This sort of defeats the point of having a live updating Docker image however.
