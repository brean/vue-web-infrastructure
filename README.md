# Web Infrastructure

Basic docker-based infrastructure for Web Projects using Vuetify and TypeScript.

With custom Express (TypeScript) server and database (MongoDB) connection.

Including these docker-container:

- **nginx** as first entrypoint for all icomming requests for <https://mydomain.com>.
- **letsencrypt** certbot, to generate and update SSL certificates automatically.
- **vue-builder** to transpile the vuetify-hello-world app in `volumes/app/client` that gets mounted for nginx.
- **express-node** simple express.js server (as example for database connection and services). This will be accessible through the nginx Server: at <https://app.mydomain.com>.
- **mongo** MongoDB-server to persist some data (using authentification).
- **mongo-express** MongoDB-Express service for the configuration of the data (using authentification). **Note that this will be accessible through the nginx Server: at <https://config.mydomain.com>**!

## Configuration

- Change usernames and passwords in the `env-template` file and save it as `.env`.
- Change mydomain.com to your domain in `volumes/nginx/conf.d/app.conf`.

## Build on server

Just start `make run`. It will build the app and start the server as deamon.
