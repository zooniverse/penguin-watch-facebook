# Penguin Watch for Facebook

[http://www.penguinwatch.org](http://www.penguinwatch.org)

Prerequisites: [Node.js](https://nodejs.org/) @ 4.2.0 (the Argon LTS)

## Running the project

### Running locally

```
npm install
npm start
```
Follow the `start` script prompt to open your default browser to the project running locally at http://localhost:3665/index.html.

### Deploying to Heroku

This project can be deployed to Heroku for testing purposes, as Heroku provides an easy way of hosting stuff over HTTPS. Simply add the target remote, and push to it, and everything should just work.

### Deploying to production

This project should also be deployable to Docker, and is configured to redeploy on pushing to Github's `master` branch.