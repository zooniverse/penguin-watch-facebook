fbConfig =
  'production':
    appId: '917543728371936'
    url: 'https://apps.facebook.com/penguin-watch/'

ENV = process.env.FB_ENV || 'production'

console.log 'Environment set to ', ENV, fbConfig[ENV]

module.exports = fbConfig[ENV]
