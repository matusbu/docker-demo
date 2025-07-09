FROM node:18

WORKDIR /app

COPY dist/ ./dist/
COPY index.html .

RUN npm install -g http-server

EXPOSE 8080
CMD ["http-server", ".", "-p", "8080"]
