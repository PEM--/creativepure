Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  onBeforeAction: ->
    ($ window).scrollTop 0
    @next()
    (new WOW).init()
  onAfterAction: ->
    Meteor.setTimeout ->
      $('pre code').each (i, node) ->
        hljs.highlightBlock node
    , 16

# Route declaration
Router.map ->
  @route '/home', path: '/'
  @route '/typography'
  @route '/forms'
  @route '/off-screens'
  @route '/recipes'
