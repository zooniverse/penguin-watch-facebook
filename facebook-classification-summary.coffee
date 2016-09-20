Classifier = require 'zooniverse-readymade/lib/classifier'
ClassificationSummary = require 'zooniverse-readymade/lib/classification-summary'
fbConfig = require './facebook-config'

ClassificationSummary::template = require './templates/facebook-classification-summary'
ClassificationSummary::elements =
  '.readymade-existing-comments': 'existingCommentsText'
  '.readymade-existing-comments-count': 'existingCommentsCount'
  '.readymade-talk-link': 'talkLink'
  '.readymade-twitter-link': 'twitterLink'
  '.readymade-facebook-link': 'facebookLink'

ClassificationSummary::events =
  'click button[name="readymade-dont-talk"]': ->
    @trigger @DISMISS
  'click button[name="readymade-facebook-share"]': "shareOnNewsFeed"

ClassificationSummary::shareOnNewsFeed = ->
  actionProperties =
    object:
      'og:image': window.classifier.Subject.current.location.standard
      'og:title': "I'm classifying penguins in Antarctica!"
      'og:description': "Penguin Watch helps conservation efforts in the South Pole by helping to count penguin populations."
      'og:site_name': 'Penguin Watch'
      'og:url': fbConfig.url
      'fb:app_id': fbConfig.appId

  FB.ui
    method: 'share_open_graph'
    action_type: 'og.shares'
    action_properties: JSON.stringify actionProperties