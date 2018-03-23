require 'requests'

class RequestController

  attr_accessor :headers, :body, :path

  def initialize(headers, body, path)
    @headers = headers
    @body = body
    @path = path
  end
end
