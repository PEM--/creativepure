Template.textInputs.rendered = ->
  Meteor.setTimeout ->
    @$ 'input[type=\'email\'], input[type=\'password\']'
    .each (idx, el) =>
      $el = @$ el
      $el.addClass 'filled' unless $el.val().length is 0
  , 300

Template.textInputs.events
  'focus input[type=\'email\'], focus input[type=\'password\']': (e, t) ->
    (t.$ e.target).addClass 'filled'
  'blur input[type=\'email\'], blur input[type=\'password\']': (e, t) ->
    (t.$ e.target).removeClass 'filled' if e.target.value.length is 0
