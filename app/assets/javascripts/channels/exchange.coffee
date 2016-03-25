App.exchange = App.cable.subscriptions.create "ExchangeChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#chat').append "<div><p>"+data['message']+"</p></div>"
    #alert(data['message'])
    # Called when there's incoming data on the websocket for this channel

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=chat_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.exchange.speak event.target.value
    event.target.value = ""
    event.preventDefault()

$(document).on 'click', '[data-behavior~=exchange_pokemon]', (event) ->
    #alert(event)
    #App.exchange.propose_pokemon event.target.value
    event.preventDefault()
