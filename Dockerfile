FROM openapitools/openapi-generator-cli:v4.3.1

RUN apk update --no-cache
# Install jq
RUN apk add jq curl
