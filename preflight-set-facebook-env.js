// Manually create a facebook env setting
// readymade projects don't respect / pass through the Node environment settings,
// so we need to create a Coffeescript file that can then be required in.
var fs = require('fs');

var ENV = process.env.FB_ENV || 'dev';
var TEMPLATE = `module.exports = '${ENV}'`;
var TARGET_FILE = __dirname + '/facebook-env.coffee';

fs.writeFile(TARGET_FILE, TEMPLATE, function(err) {
  return (err)
    ? console.log('Error writing', TARGET_FILE, err)
    : console.log('Successfully wrote', TARGET_FILE);
});
