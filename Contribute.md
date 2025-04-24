## Manual Installation
 - Install nodejs locally ()
 - Clone the repo
 - Install the dependencies (npm install)
 - Start the db locally
    - Go to neon.tech and get your db url
 - Change the .env file and update your db credentials
 - npx prisma migrate
 - npx prisma generate
 - npm run dev

## Docker Installation
 - Install docker
 - Create a network `docker network create my-network`
 - Start postgres
    - `docker run --network my-network --name postgres -e POSTGRES_PASSWORD=mysecretpassword -d -p 5432:5432 postgres`
 - Build the image `docker build --network=host -t my-image .`
 - Start the image `docker run -e DATABASE_URL=postgresql://postgres:mysecretpassword@postgres:5432/postgres --network my-network -p 3000:3000 my-image`

 ## Docker Compose Installation
  - Install docker, docker-compose
  - Run `docker-compose up`