ENV['MONGOID_ENV'] = 'test'
require './init'

RSpec.configure do |config|

  # Clean/Reset Mongoid DB prior to running each test.
  config.before(:each) do
     Mongoid::Sessions.default.collections.each(&:drop)
  end
end