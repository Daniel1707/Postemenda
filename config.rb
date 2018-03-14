require 'airborne'

Airborne.configure do |config|
  config.base_url = 'http://google.com'
end

ExpectationNotMetError = RSpec::Expectations::ExpectationNotMetError
ExpectationError       = Airborne::ExpectationError
InvalidJsonError       = Airborne::InvalidJsonError
PathError = Airborne::PathError
