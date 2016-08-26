ClassificationSumary = require 'zooniverse-readymade/lib/classification-summary'

ClassificationSumary::template = require './templates/facebook-classification-summary'
ClassificationSumary::elements =
  '.readymade-existing-comments': 'existingCommentsText'
  '.readymade-existing-comments-count': 'existingCommentsCount'
  '.readymade-talk-link': 'talkLink'
  '.readymade-twitter-link': 'twitterLink'
  '.readymade-facebook-link': 'facebookLink'

ClassificationSumary::events =
    'click button[name="readymade-dont-talk"]': ->
      @trigger @DISMISS
    'click button[name="readymade-facebook-share"]': "shareOnNewsFeed"

ClassificationSumary::shareOnNewsFeed = ->
  console.log 'Sharing'

# TODO:
# Remove the discuss on talk button, replace with Next
# Add in button for sharing on FB News Feed
