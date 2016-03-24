# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class ExchangeChannel < ApplicationCable::Channel
  def subscribed
    stream_from "exchange_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    MessageBroadcastJob.perform_later(data['message'],self.trainer_name)
    #Message.create!(content: data['message'])
  end


end
