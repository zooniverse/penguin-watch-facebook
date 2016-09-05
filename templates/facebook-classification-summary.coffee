translate = require 'zooniverse/lib/translate'

module.exports = -> "
  #{ translate('p','readymade.thankYou') }

  <div>
    <p>Share this image with your friends!</p>

    <button type='button' name='readymade-facebook-share'>readymade-facebook-share</button>

    <p class='readymade-talk'>
      <button type='button' name='readymade-dont-talk'>Next image</button>
    </p>

  </div>
"
