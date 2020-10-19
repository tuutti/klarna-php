FROM node:current-alpine3.12

RUN apk update --no-cache
RUN apk add jq curl git openjdk8-jre make bash
RUN npm install -g @openapitools/openapi-generator-cli
RUN openapi-generator-cli || true
