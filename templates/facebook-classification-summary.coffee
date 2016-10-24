translate = window.zooniverse?.translate or require('zooniverse/lib/translate')

module.exports = -> "
  #{ translate('p','readymade.thankYou') }

  <div>
    <p>Share this image with your friends!</p>

    <p class='readymade-talk readymade-share'>
      <button type='button' name='readymade-facebook-share'>Share this!</button>
    </p>

    <p class='readymade-talk'>
      <button type='button' name='readymade-dont-talk'>Next image</button>
    </p>

  </div>
"
