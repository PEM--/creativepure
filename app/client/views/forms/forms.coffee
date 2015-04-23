Template.forms.created = ->
  @rxCivility = new ReactiveVar
  @rxCivility.set ''
  @autorun (computation) =>
    civility = @rxCivility.get()
    unless computation.firstRun
      $selectCustom = @$ '.select-custom'
      $selectCustom.addClass 'filled'

Template.forms.rendered = ->
  Meteor.setTimeout ->
    @$ 'input[type=\'email\'], input[type=\'password\']'
    .each (idx, el) =>
      $el = @$ el
      $el.addClass 'filled' unless $el.val().length is 0
  , 300

Template.forms.events
  'focus input[type=\'email\'], focus input[type=\'password\']': (e, t) ->
    (t.$ e.target).addClass 'filled'
  'blur input[type=\'email\'], blur input[type=\'password\']': (e, t) ->
    (t.$ e.target).removeClass 'filled' if e.target.value.length is 0
  'click button.small': (e, t) ->
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on ANIMATION_END_EVENT, ->
      $button
        .off ANIMATION_END_EVENT
        .removeClass 'clicked'
  'click button.inspiration': (e, t) ->
    $button = t.$ e.target
    $button.addClass 'clicked'
    $button.on TRANSITION_END_EVENT, ->
      $button
        .off TRANSITION_END_EVENT
        .removeClass 'clicked'
  'click .select-custom li': (e, t) ->
    t.rxCivility.set e.target.textContent
  'click [data-role=\'dot-style\'] a': (e, t) ->
    e.preventDefault()
    t.rxActiveDot.set @id

Template.forms.helpers
  selectedCivility: -> Template.instance().rxCivility.get()
  civility: -> ['Mr', 'Mrs', 'Ms', 'Dr']
