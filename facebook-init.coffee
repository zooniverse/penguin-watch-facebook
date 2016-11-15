fbConfig = require './facebook-config'
fbEnv = require './facebook-env'

config = fbConfig[fbEnv]
console.log 'Environment set to', fbEnv, config

window.fbAsyncInit = ->
  FB.init
    appId: config.appId
    xfbml: true
    version: 'v2.7'
  FB.AppEvents.logEvent 'VISITED_APP'

# Facebook SDK snippet
`
  (function(d, s, id){
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) {return;}
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js";
    fjs.parentNode.insertBefore(js, fjs);
  }(document, 'script', 'facebook-jssdk'));
`
