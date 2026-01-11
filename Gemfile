source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.read(".ruby-version")

gem "rails", "8.1.2"

gem "sqlite3"
gem "puma"
gem "sassc-rails"
gem "webpacker"
gem "turbolinks"
gem "jbuilder"

gem "bootsnap", require: false

group :development do
  gem "listen"
end

gem "standard", group: [:development, :test]
gem "spektr"

# HID: group :development, :test do
# HID:  gem 'byebug', platforms: [:mri, :windows]
# HID: end
# HID:
# HID:group :development do
# HID:  gem 'web-console', '>= 3.3.0'
# HID:  gem 'listen', '>= 3.0.5', '< 3.2'
# HID:  gem 'spring'
# HID:  gem 'spring-watcher-listen', '~> 2.0.0'
# HID:end
# HID:
# HID:group :test do
# HID:  gem 'capybara', '>= 2.15'
# HID:  gem 'selenium-webdriver'
# HID:  gem 'webdrivers'
# HID:end
# HID:
# HID:gem 'tzinfo-data', platforms: [:windows, :jruby]

# 12/5/2019: Commented out the following:
# gem 'sorbet', :group => :development
# gem 'sorbet-runtime'
# gem 'sorbet-rails'
# gem 'dalli' # Needed by sorbet.
# gem 'redis' # Needed by sorbet.

gem 'simplecov', require: false, group: :test
