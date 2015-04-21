Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  onAfterAction: ->
    Meteor.setTimeout ->
      $('pre code').each (i, node) ->
        hljs.highlightBlock node
    , 16

# Route declaration
Router.map ->
  @route '/home', path: '/'
  @route '/buttons'
  @route '/text-inputs'
  @route '/typography'
  @route '/off-screens'
  @route '/others'
