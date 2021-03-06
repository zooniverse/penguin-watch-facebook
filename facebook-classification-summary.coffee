Classifier = require 'zooniverse-readymade/lib/classifier'
ClassificationSummary = require 'zooniverse-readymade/lib/classification-summary'
fbConfig = require './facebook-config'
fbEnv = require './facebook-env'

config = fbConfig[fbEnv]

ClassificationSummary::template = require './templates/facebook-classification-summary'

ClassificationSummary::elements =
  '.readymade-existing-comments': 'existingCommentsText'
  '.readymade-existing-comments-count': 'existingCommentsCount'
  '.readymade-talk-link': 'talkLink'
  '.readymade-twitter-link': 'twitterLink'
  '.readymade-facebook-link': 'facebookLink'

ClassificationSummary::events =
  'click button[name="readymade-dont-talk"]': ->
    @fireFBClassificationEvent()
    @trigger @DISMISS
  'click button[name="readymade-facebook-share"]': "shareOnNewsFeed"

ClassificationSummary::fireFBClassificationEvent = ->
  currentProject = require 'zooniverse-readymade/current-project'
  currentSubject = currentProject.classifyPages[0].Subject.current.id

  params =
    CONTENT_ID: currentSubject
  FB.AppEvents.logEvent 'CLASSIFIED_SUBJECT', null, params

ClassificationSummary::shareOnNewsFeed = ->
  currentProject = require 'zooniverse-readymade/current-project'
  currentSubject = currentProject.classifyPages[0].Subject.current.location.standard
  
  actionProperties =
    object:
      'og:image': currentSubject
      'og:title': "I'm classifying penguins in Antarctica!"
      'og:description': "Penguin Watch helps conservation efforts in the South Pole by helping to count penguin populations."
      'og:site_name': 'Penguin Watch'
      'og:url': config.url
      'fb:app_id': config.appId

  FB.ui
    method: 'share_open_graph'
    action_type: 'og.shares'
    action_properties: JSON.stringify actionProperties
