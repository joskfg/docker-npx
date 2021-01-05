FROM node:lts-buster-slim

VOLUME /app
WORKDIR /app

ENTRYPOINT ["npx"]
CMD ["--help"]

LABEL maintainer="Jose Manuel Cardona"
