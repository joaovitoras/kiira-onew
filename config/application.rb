require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module KiiraOnew
  class Application < Rails::Application
    ENV['RAILS_ADMIN_THEME'] = 'flatly_theme'
    config.time_zone = 'Brasilia'
  	config.encoding = "utf-8"

    config.to_prepare do
      Devise::SessionsController.layout "devise"
      Devise::ConfirmationsController.layout "devise"
      Devise::UnlocksController.layout "devise"            
      Devise::PasswordsController.layout "devise"        
    end
  end
end
