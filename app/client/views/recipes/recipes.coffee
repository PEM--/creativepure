Template.recipes.created = ->
  @rxCivility = new ReactiveVar
  @rxCivility.set ''
  @autorun (computation) =>
    civility = @rxCivility.get()
    unless computation.firstRun
      $selectCustom = @$ '.select-custom'
      $selectCustom.addClass 'filled'
  @rxActiveDot = new ReactiveVar

Template.recipes.helpers
  selectedCivility: -> Template.instance().rxCivility.get()
  civility: -> ['Mr', 'Mrs', 'Ms', 'Dr']
  dotExample: -> [
    {id: 1, link: '/', page: 'Home' }
    {id: 2, link: '/', page: 'Buttons' }
    {id: 3, link: '/', page: 'Text inputs' }
    {id: 4, link: '/', page: 'Off screens' }
    {id: 5, link: '/', page: 'Others' }
  ]
  dotActive: -> 'active' if Template.instance().rxActiveDot.get() is @id

Template.recipes.events
  'click .select-custom li': (e, t) ->
    t.rxCivility.set e.target.textContent
  'click [data-role=\'dot-style\'] a': (e, t) ->
    e.preventDefault()
    t.rxActiveDot.set @id
