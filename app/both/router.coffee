Router.configure
  layoutTemplate: 'layout'
  loadingTemplate: 'loading'
  notFoundTemplate: 'notFound'

# Route declaration
Router.map ->
  @route '/home', path: '/'
