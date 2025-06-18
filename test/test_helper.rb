ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Telling Ruby not to load any fixtures.
    self.fixture_paths = []

    # Add more helper methods to be used by all tests here...
  end
end
