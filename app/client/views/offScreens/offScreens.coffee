Template.offScreens.created = ->
  @toggle = =>
    buttonPos = (@$ 'button')[0].getBoundingClientRect()
    el = @$ '.morph-button'
    @$('.morph-content').css
      left: "#{buttonPos.left}px"
      top: "#{buttonPos.top}px"
    if @expanded
      el.removeClass 'open'
    else
      setTimeout (-> el.addClass 'open'), 25
    @expanded = not @expanded

Template.offScreens.events
  'click .morph-button': (e, t) -> t.toggle()
