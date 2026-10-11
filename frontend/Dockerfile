# Build stage
FROM node:18-alpine as build

WORKDIR /usr/src/app

COPY frontend/package*.json ./
RUN npm ci

COPY frontend/. .
RUN npm run build

# Production stage
FROM nginx:alpine

COPY --from=build /usr/src/app/build /usr/share/nginx/html

COPY frontend/nginx.conf /etc/nginx/nginx.conf

EXPOSE 3000

CMD ["nginx", "-g", "daemon off;"]