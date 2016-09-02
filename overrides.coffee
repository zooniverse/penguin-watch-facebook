FieldGuide = require 'zooniverse-readymade/lib/field-guide'
FieldGuide::template = (examples) -> "
    <div class='readymade-field-guide-tabs'>
      #{("
        <button id='fg-tab-#{i}' name='readymade-field-guide-tab'>#{page.label}</button>
      " for page, i in examples).join '\n'}
    </div>

    <div class='readymade-field-guide-pages'>
      #{("
        <div class='readymade-field-guide-page'>
          <div class='readymade-field-guide-content'>#{page.content ? ''}</div>
          <div class='readymade-field-guide-examples'>
            #{("
              <div class='readymade-field-guide-example'>
                <div class='readymade-field-guide-caption'>#{figure.label}</div>
                <img src='#{figure.image}' alt='#{figure.alt}' class='readymade-field-guide-image' />
              </div>
            " for figure in page.figures).join '\n'}
          </div>
        </div>
      " for page, i in examples).join '\n'}
    </div>
  "

# Override the Classification Summary so we can do our custom FB stuff before
# the project is instantiated.
require './facebook-sdk'
require './facebook-init'
require './facebook-classification-summary'

currentProject = require 'zooniverse-readymade/current-project'
classify_page = currentProject.classifyPages[0]

tag = document.createElement('script')
tag.src = './you_tube_iframe_player.js'
firstScriptTag = document.getElementsByTagName('script')[0]
firstScriptTag.parentNode.insertBefore tag, firstScriptTag

require './show-project-details'
require './show-roi'
require './auto-choose-penguin-tool'
require './limit-marks'
require './show-counts'
require './attribute-background-image'
require './confirm-button-label'
require './task-defaults'


GoogleAnalytics = require 'zooniverse/lib/google-analytics'
analytics = new GoogleAnalytics
  account: 'UA-1224199-57'
  domain: 'www.penguinwatch.org'
