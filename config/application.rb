require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
# require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
require 'neo4j/railtie'
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Neomon
  class Application < Rails::Application

    config.generators do |g|
      g.orm             :neo4j
    end

    # Configure where the embedded neo4j database should exist
    # Notice embedded db is only available for JRuby
    # config.neo4j.session_type = :embedded_db  # default #server_db
    # config.neo4j.session_path = File.expand_path('neo4j-db', Rails.root)

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.neo4j.session_type = :server_db
    config.neo4j.wait_for_connection = true
    config.neo4j.session_path = "http://#{ENV.fetch("DB_PORT_7474_TCP_ADDR", "localhost")}:#{ENV.fetch("DB_PORT_7474_TCP_PORT", 7474)}"
    #config.neo4j.session_path = "http://localhost:7474"

    config.autoload_paths << Rails.root.join('lib')
  end
end
