# Penguins

[http://www.penguinwatch.org](http://www.penguinwatch.org)

Prerequisite: [Node.js](https://nodejs.org/)

```
npm install
npm start
```
Follow the `start` script prompt to open your default browser to the project running locally at http://localhost:3665/index.html.

## FB-specific Stuff

This app is rebuilt in a Docker container running on AWS on changes to master. The Dockerfile runs a small Express server running on port 80 (has to be below 1024, or zooniverse.js defaults to `dev` mode).

To allow for environment-specific configs, there's an `FB_ENV` environment variable that can be used to set the app's id, so you can create a test app on FB.
