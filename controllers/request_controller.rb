require_relative '../lib/requests'

class RequestController

  def initialize(type, headers, body, path)
    @type = type
    @headers = headers
    @body = body
    @path = path
  end

  def call_request
    response = Requests.send_values(@type, @headers, @body, @path)
    return response
  end
end
