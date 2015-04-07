Template.buttons.events
  'click button.small': (e, t) ->
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
  'click button.small': (e, t) ->
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
