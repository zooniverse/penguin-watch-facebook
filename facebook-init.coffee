fbConfig = require './facebook-config'

window.fbAsyncInit = ->
  FB.init
    appId: fbConfig.appId
    xfbml: true
    version: 'v2.7'

# Facebook SDK snippet
# Everything is namespaced because there's some weird spooky action-at-a-distance
# business going on when Coffeescript gets compiled for production. Do not want.
`(function(fb_d, fb_s, fb_id){
   var fb_js, fb_fjs = fb_d.getElementsByTagName(fb_s)[0];
   if (fb_d.getElementById(fb_id)) {return;}
   fb_js = fb_d.createElement(fb_s); fb_js.id = fb_id;
   fb_js.src = "//connect.facebook.net/en_US/sdk.js";
   fb_fjs.parentNode.insertBefore(fb_js, fb_fjs);
 }(document, 'script', 'facebook-jssdk'));`
