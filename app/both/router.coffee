Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  onBeforeAction: ->
    ($ 'body >section').css 'opacity', 0
    @next()
  onAfterAction: ->
    ($ window).scrollTop 0
    (new WOW).init()
    Meteor.setTimeout ->
      ($ 'body >section').css 'opacity', 1
      $('pre code').each (i, node) ->
        hljs.highlightBlock node
    , 64

# Route declaration
Router.map ->
  @route '/home', path: '/'
  @route '/typography'
  @route '/forms'
  @route '/off-screens'
  @route '/recipes'
