source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

#base ruby gem.
ruby '3.0.0'

# My custom gem that is designed as a profanity filter. Links to git repo instead of a local gem file. 
# The gem is still compiled locally using gemspec file before it was pushed to my Git repo.
# https://github.com/TheIrishAce/Ruby-Basic-ProfanityFilter
gem 'isprofanity', :git => 'https://github.com/TheIrishAce/Ruby-Basic-ProfanityFilter.git'
#rexml is a requirement that's needed for Rails 6 but isn't packaged by default.
gem 'rexml'
#rss feeds, used for processing xml from public Irish weather rss feed.
gem 'rss', '~> 0.2.9'
#open uri used for URI's. Specificly used for weather RSS feed in my application.
gem 'open-uri', '~> 0.1.0'
# Devise account creation/login auth gem.
gem 'devise'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 6.0.0.beta.6'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Bootstrap 5 beta 2 gem, this is potentially unneeded.
gem 'bootstrap', '~> 5.0.0.beta2'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

group :production do
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 1.1'
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
