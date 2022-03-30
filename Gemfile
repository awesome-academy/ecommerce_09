# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "activerecord-import"
gem "axlsx", "2.0.1"
gem "axlsx_rails"
gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.1.0", require: false
gem "bootstrap-sass"
gem "cancancan"
gem "carrierwave", "1.2.2"
gem "chartkick"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "devise"
gem "faker"
gem "figaro"
gem "groupdate"
gem "i18n-js"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "kaminari", git: "https://github.com/kaminari/kaminari"
gem "mini_magick", "~> 4.8"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "nested_form_fields"
gem "public_activity"
gem "puma", "~> 4.3"
gem "rails", "~> 5.2.3"
gem "rails-i18n"
gem "ransack"
gem "redis", "~> 4.0"
gem "roo"
gem "rubocop", "~> 0.54.0", require: false
gem "rubyzip"
gem "rufus-scheduler"
gem "sass-rails", "~> 5.0"
gem "search_cop"
gem "uglifier", ">= 1.3.0"
gem "wicked_pdf"
gem "wkhtmltopdf-binary"
gem "zip-zip"
# gem "will_paginate"
# gem "capistrano-rails", group: :development
# gem "mini_racer", platforms: :ruby

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
  gem "capybara"
  gem "factory_bot_rails"
  gem "rspec-rails"
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "chromedriver-helper"
  gem "database_cleaner"
  gem "minitest", "5.11.3"
  gem "minitest-reporters", "1.1.14"
  gem "rails-controller-testing", "1.0.2"
  gem "selenium-webdriver"
  gem "shoulda-matchers", require: false
end

group :production do
  gem "pg", "0.20.0"
end

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)
