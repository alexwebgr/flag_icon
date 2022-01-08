# frozen_string_literal: true

require "flag_icon"
require 'simplecov'

RSpec.configure do |config|
  SimpleCov.start do
    add_filter "/spec/"
    add_filter "/db/"
    add_filter "/config/"
    add_filter "/bin/"
    enable_coverage :branch
  end

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
