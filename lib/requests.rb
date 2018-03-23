require 'rest-client'
require './controllers/response_controller'

class Requests
  def self.send_values(type, headers, body, path)
    begin
      if body.eql? ''
        response = RestClient.send(type, *[path, headers])
      else
        response = RestClient.send(type, *[path, body, headers])
      end
    rescue Exception => detail
      response = detail.response
    ensure
      response_1 = ResponseController.process_response(response)

      return response
    end
  end
end
