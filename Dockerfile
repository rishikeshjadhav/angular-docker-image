FROM node:alpine AS builder

WORKDIR /dockerapp

COPY . .

FROM nginx:alpine

COPY --from=builder /dockerapp/dist/* /usr/share/nginx/html/
