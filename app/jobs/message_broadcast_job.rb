class MessageBroadcastJob < ApplicationJob
  queue_as :default

  def perform(message,user_name)
    ActionCable.server.broadcast 'exchange_channel', message: "#{user_name} : #{message}"
  end

  # private
  #   def render_message(message)
  #     ApplicationController.renderer.render(partial: 'exchanges/message', locals: { message: message })
  #   end
end
