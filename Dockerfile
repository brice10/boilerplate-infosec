FROM node:16

COPY . /app
WORKDIR /app
RUN npm install

ARG PORT
ENV PORT=$PORT

EXPOSE $PORT
CMD ["npm", "start"]