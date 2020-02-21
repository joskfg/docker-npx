FROM node:lts-alpine

VOLUME /app
WORKDIR /app

ENTRYPOINT ["npx"]
CMD ["--help"]

LABEL maintainer="Peter J Langley"