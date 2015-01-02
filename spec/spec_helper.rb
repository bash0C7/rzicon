$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'nizicon'

RSpec.configure do |config|
  config.order = :random
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end
end
