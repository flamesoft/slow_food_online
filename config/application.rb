require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module SlowFoodOnline
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |generate|
      generate.helper false
      generate.assets false
      generate.view_specs false
    end

    config.middleware.insert_before 0, "Rack::Cors" do
     allow do
       origins '*'
       resource '*', :headers => :any, :methods => [:get, :post, :put, :patch, :delete, :options, :head]
     end
   end
  end
end
