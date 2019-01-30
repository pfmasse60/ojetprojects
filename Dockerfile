FROM node:10
#copy the Node Reload server - exposed at port 4500
run mkdir reloader
run mkdir jet-on-node
RUN cd reloader && npm install
RUN cd jet-on-node && npm install
EXPOSE 4500
RUN npm install -g nodemon
RUN npm install -g @oracle/ojet-cli
