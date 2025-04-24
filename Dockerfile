FROM node:23-alpine

WORKDIR /app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

COPY . .

ENV DATABASE_URL="postgresql://postgres:mysecretpassword@localhost:5432/postgres"

RUN DATABASE_URL=$DATABASE_URL npx prisma migrate dev
RUN npx prisma generate 

CMD ["npm", "run", "dev"]
