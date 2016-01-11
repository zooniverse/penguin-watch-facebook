var express = require('express');

// Constants
var PORT = 8080;

// App
var app = express();

app.use('/', express.static('/app/build'));

app.listen(PORT, function () {
    console.log('Running on http://localhost:' + PORT);
});