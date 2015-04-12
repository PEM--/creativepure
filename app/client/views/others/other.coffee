Template.others.created = ->
  @rxCivility = new ReactiveVar
  @rxCivility.set ''
  @autorun (computation) =>
    civility = @rxCivility.get()
    unless computation.firstRun
      $selectCustom = @$ '.select-custom'
      $selectCustom.addClass 'filled'

Template.others.helpers
  selectedCivility: -> Template.instance().rxCivility.get()
  civility: -> ['Mr', 'Mrs', 'Ms', 'Dr']

Template.others.events
  'click .select-custom li': (e, t) ->
    t.rxCivility.set e.target.textContent
