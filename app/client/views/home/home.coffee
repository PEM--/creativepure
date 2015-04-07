Template.home.events
  'click button': (e, t) ->
    e.preventDefault()
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
  'focus input[type=\'email\'], focus input[type=\'password\']': (e, t) ->
    (t.$ e.target).addClass 'filled'
  'blur input[type=\'email\'], blur input[type=\'password\']': (e, t) ->
    (t.$ e.target).removeClass 'filled' if e.target.value.length is 0
