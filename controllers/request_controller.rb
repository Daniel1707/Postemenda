require 'requests'
require '../lib/requests'

class RequestController

  attr_accessor :headers, :body, :path

  def initialize(type, headers, body, path)
    validate_type_request

    @type = type
    @headers = headers
    @body = body
    @path = path
  end

  private
  def validate_type_request
    value = @type.downcase.in?(['post', 'get', 'put', 'delete', 'patch'])

    if value.eql?(false)
      raise "Type informed [#{@type}] is incorrect. You have to use one of the followings types: post, get, put, delete, patch"
    end
  end

  def call_request
    Requests.send(@type, @headers, @body, @path)
  end

end
