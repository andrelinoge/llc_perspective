# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('node_modules')
Rails.application.config.assets.paths << "#{Rails.root}/vendor/assets"
Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf|gif)\z/

# folder are already added.
Rails.application.config.assets.paths << 'themes'
Rails.application.config.assets.precompile += %w( init_theme.js )
