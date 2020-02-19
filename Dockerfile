FROM node:13-alpine
MAINTAINER jeff.tunessen@gmail.com

RUN npm install -g csso-cli

ENTRYPOINT ["csso"]
CMD ["-"]