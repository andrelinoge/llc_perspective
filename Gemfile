ruby "2.4.1"
source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'bootstrap'
gem 'bootstrap_form'
gem 'bootstrap-growl-rails'
gem 'ckeditor'
gem 'carrierwave'
gem 'mini_magick'
gem 'dotenv-rails'
gem 'font-awesome-rails'
gem 'globalize', git: 'https://github.com/globalize/globalize'
gem 'activemodel-serializers-xml'
gem 'google-analytics-rails', '1.1.1'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'rails-settings-cached'
gem 'simple_form'
gem 'slim'
gem 'slim-rails', '= 3.1.1'
gem 'truncate_html'
gem 'therubyracer', platforms: :ruby
gem 'rails_12factor', group: :production
gem 'database_cleaner'
gem 'truncate_html'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'annotate'
  # Adds support for Capybara system testing and selenium driver
  #gem 'capybara', '~> 2.13'
  gem 'better_errors'
  gem 'colorize'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
