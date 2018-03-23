require 'requests'

class RequestController

  attr_accessor :headers, :body, :path

  def initialize(type, headers, body, path)
    @type = type
    @headers = headers
    @body = body
    @path = path
  end

  

end
