require 'requests'
require '../lib/requests'

class RequestController

  attr_accessor :headers, :body, :path

  def initialize(type, headers, body, path)
    @type = type
    @headers = headers
    @body = body
    @path = path

    call_request
  end

  private

  def call_request
    Requests.send_values(@type, @headers, @body, @path)
  end
end
