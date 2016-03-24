# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :trainer_name

    def connect
      self.trainer_name = cookies[:trainer_name]
    end
  end
end
