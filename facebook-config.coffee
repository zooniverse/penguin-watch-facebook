fbConfig =
  'dev':
    appId: '1004328769693431'
    url: 'https://apps.facebook.com/1004328769693431/'
  'production':
    appId: '917543728371936'
    url: 'https://apps.facebook.com/penguin-watch/'

ENV = process.env.FB_ENV || 'production'

console.log 'Environment set to ', ENV, fbConfig[ENV]

module.exports = fbConfig[ENV]
