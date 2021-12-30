# docker file for production environment
# Build phase
#  - use node:alpine
#  - copy the package.json file
#  - install dependencies
#  - Run 'yarn run build'
# Run Phase
#  - use nginx
#  - copy over the result of 'yarn run build'
#  - start nginx 
# Finaly  
#  docker build .
#  docker run -p 8080:80 <image-id>

FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN yarn install
COPY . .
RUN yarn run build

FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html