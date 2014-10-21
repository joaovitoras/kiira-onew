require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module KiiraOnew
  class Application < Rails::Application
    config.i18n.locale         = 'en'
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

SETTINGS = YAML.load_file( Rails.root.join 'config/settings.yml' )[Rails.env].deep_symbolize_keys!

