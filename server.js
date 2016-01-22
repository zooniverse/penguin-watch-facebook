var express = require('express');
var morgan = require('morgan');

// Constants
var PORT = 8080;

// App
var app = express();

app.use(morgan('dev'));

app.use('/', express.static('/app/build'));

app.listen(PORT, function () {
    console.log('Running on http://localhost:' + PORT);
});