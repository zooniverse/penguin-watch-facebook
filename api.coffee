window.zooniverse ?= {}

EventEmitter = window.zooniverse?.EventEmitter or require 'zooniverse/lib/event-emitter'
$ = window.jQuery

class Api extends EventEmitter
  @current: null

  project: '.'

  headers: {}

  constructor: ({@project, @host, loadTimeout} = {}) ->
    super
    @select()

  request: (type, url, data, done, fail) ->
    dataType = 'json'
    headers = { }
    url = "#{@host}#{url}"

    if typeof data is 'function'
      [fail, done, data] = [done, data, null]

    if typeof data is 'object' and data isnt null
      if data.classification
        data.classification.annotations.push 'facebook': 'true'
      data = JSON.parse JSON.stringify data

    request = $.ajax {type, url, data, dataType}
    request.done done
    request.fail fail

  get: ->
    @request 'get', arguments...

  getJSON: ->
    @request 'getJSON', arguments...

  post: ->
    @request 'post', arguments...

  put: ->
    @request 'put', arguments...

  delete: ->
    @request 'delete', arguments...

  select: ->
    @trigger 'select'
    @constructor.current = @

window.zooniverse.Api = Api
module?.exports = Api
