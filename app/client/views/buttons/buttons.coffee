@ANIMATION_END_EVENT = 'oanimationend animationend webkitAnimationEnd \
  otransitionend oTransitionEnd msTransitionEnd mozAnimationEnd \
  MSAnimationEnd'

@TRANSITION_END_EVENT = 'webkitTransitionEnd transitionend oTransitionEnd'

Template.buttons.events
  'click button': (e, t) ->
    e.preventDefault()
    $button = t.$ '#access'
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
      checkAndAuthenticate (t.$ '[name=\'username\']'), \
        (t.$ '[name=\'password\']')
