FROM node:14.20.0-bullseye

WORKDIR /app/website

EXPOSE 3000 35729
COPY . .
RUN npm install && npm run build

CMD ["npm", "run", "start", "--", "--port", "$PORT", "--host", "0.0.0.0"]