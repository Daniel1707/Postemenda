require 'requests'

class RequestController

  attr_accessor :headers, :body, :path

  def initialize(headers, body, path)
    @nome = nome
    @body = body
    @path = path
  end
end
