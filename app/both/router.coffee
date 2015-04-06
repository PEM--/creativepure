Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'
  onAfterAction: ->
    Meteor.setTimeout ->
      $('pre code').each (i, node) ->
        hljs.highlightBlock node
    , 300

# Route declaration
Router.map ->
  @route '/home', path: '/'
  @route '/links'
  @route '/iron-router'
  @route '/text-inputs'
