# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( css/sb-admin.css )
Rails.application.config.assets.precompile += %w( css/bootstrap.min.css )
Rails.application.config.assets.precompile += %w( css/bootstrap.css )
Rails.application.config.assets.precompile += %w( font-awesome-4.1.0/css/font-awesome.min.css )
