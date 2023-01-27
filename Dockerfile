FROM node:14.16.0-alpine3.13
RUN addgroup admin && adduser -S -G admin admin
USER admin
WORKDIR /app
COPY . .
RUN npm install
ENV API_URL=http://api.myapp.com
EXPOSE 3000
CMD ["npm", "start"]
