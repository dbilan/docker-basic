FROM     node:alpine
WORKDIR  /opt/app
COPY     app/ .
RUN      npm install && \
         npm cache clean --force
EXPOSE   4200
CMD      ["npm","start"]
