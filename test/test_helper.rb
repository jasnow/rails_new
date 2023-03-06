require 'simplecov'
if ENV["COVERAGE"]
  SimpleCov.start 'rails' do
    puts "Adding simplecov"
    enable_coverage :branch
    primary_coverage :branch
  end
end

# typed: strong
# HID: ENV['RAILS_ENV'] ||= 'test'
# HID: require_relative '../config/environment'
# HID: require 'rails/test_help'
# HID:
# HID: class ActiveSupport::TestCase
# HID:   # Run tests in parallel with specified workers
# HID:   parallelize(workers: :number_of_processors)
# HID:
# HID:   # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
# HID:   fixtures :all
# HID:
# HID:   # Add more helper methods to be used by all tests here...
# HID: end
