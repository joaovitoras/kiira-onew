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

    config.app_generators.stylesheet_engine :less
    config.less.compress = true    

    I18n.config.enforce_available_locales = false
    config.i18n.locale         = "pt-BR"
    config.i18n.available_locales = ["pt-BR",:en]
    config.i18n.load_path += Dir[Rails.root.join('config/locales', config.i18n.locale, '**/*.yml').to_s]

    config.to_prepare do
      Devise::SessionsController.layout "devise"
      Devise::ConfirmationsController.layout "devise"
      Devise::UnlocksController.layout "devise"            
      Devise::PasswordsController.layout "devise"  
      Devise::RegistrationsController.layout "devise"      
    end
  end
end
