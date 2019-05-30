# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github){|repo| "https://github.com/#{repo}.git"}

ruby "2.5.1"

gem "bcrypt", "~> 3.1.7"
gem "bootsnap", ">= 1.1.0", require: false
gem "carrierwave", "1.2.2"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "faker"
gem "figaro"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "mini_magick", "~> 4.8"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "puma", "~> 3.11"
gem "rails", "~> 5.2.3"
gem "rails-i18n"
gem "rubocop", "~> 0.54.0", require: false
gem "sass-rails", "~> 5.0"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "will_paginate"
# gem "capistrano-rails", group: :development
# gem "redis", "~> 4.0"
# gem "mini_racer", platforms: :ruby

group :development, :test do
  gem "byebug", platforms: %i(mri mingw x64_mingw)
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "chromedriver-helper"
  gem "minitest", "5.11.3"
  gem "minitest-reporters", "1.1.14"
  gem "rails-controller-testing", "1.0.2"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "0.20.0"
end

gem "tzinfo-data", platforms: %i(mingw mswin x64_mingw jruby)