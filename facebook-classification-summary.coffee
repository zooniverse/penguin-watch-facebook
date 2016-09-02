ClassificationSumary = require 'zooniverse-readymade/lib/classification-summary'
fbConfig = require './facebook-config'

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
  FB.ui
      method: 'share_open_graph'
      action_type: 'og.shares'
      action_properties: JSON.stringify
        object:
          # 'og:image': @props.subject.locations[0]['image/jpeg']
          # 'og:title': message
          # 'og:description': "I'm classifying penguins in Antarctica!"
          'og:site_name': 'Penguin Watch'
          'og:url': fbConfig.url
          'fb:app_id': fbConfig.appId


# TODO:
# Remove the discuss on talk button, replace with Next
# Add in button for sharing on FB News Feed
