fbConfig = require './facebook-config'

window.fbAsyncInit = ->
  FB.init
    appId: fbConfig.appId
    xfbml: true
    version: 'v2.7'

require './facebook-sdk'
