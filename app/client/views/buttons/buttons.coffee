Template.buttons.events
  'click button#access': (e, t) ->
    e.preventDefault()
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
