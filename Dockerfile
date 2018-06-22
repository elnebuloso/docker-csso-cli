FROM node:10.5.0-alpine
MAINTAINER jeff.tunessen@gmail.com

RUN npm install -g csso-cli

ENTRYPOINT ["csso"]
CMD ["-"]