Template.home.rendered = ->
  $('pre code').each (i, node) ->
    hljs.highlightBlock node
