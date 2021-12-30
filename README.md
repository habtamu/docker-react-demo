# Getting Started with Create React App

This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.\
Open [http://localhost:3000](http://localhost:3000) to view it in your browser.

### `yarn test`

Launches the test runner in the interactive watch mode.\

### `yarn run build`

Builds the app for production to the `build` folder.\

## using Docker file

Create a Dockerfile.dev docker file for development.

### `docker run -it -p 3000:3000 IMAGE_ID`

To run the container in interactive mode.

### `docker run -it -p 3000:3000 -v /app/node_modules -v $(pwd):/app d65829b5b674c98068d

`
To run the container with mounted volume.

## using Docker compose

create a docker-compose.yml file

```
 docker-compose up
```

Example: To use the test functionality
docker-compose up --build  
docker ps <To get the running container>
docker exec -it b6f66c29d4d sh
/app # yarn run start
