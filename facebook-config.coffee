# We can't simply use environmental variables here, as it looks like zoo-readymade
# doesn't respect them when compiling the coffeescript

fbConfig =
  'dev':
    appId: '1004328769693431'
    url: 'https://apps.facebook.com/1004328769693431/'
  'production':
    appId: '917543728371936'
    url: 'https://apps.facebook.com/penguin-watch/'

# ENV = 'dev'
ENV = 'production'

console.log 'Environment set to', ENV, fbConfig[ENV]

module.exports = fbConfig[ENV]
