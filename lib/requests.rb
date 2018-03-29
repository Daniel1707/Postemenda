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

      #teste = Requests.iterate_array_json(response)
      response_all = ResponseController.process_response(response)
      #return response_all
    end
  end

  def self.iterate_array_json(json)
    json.length.times do |i|
      i
    end
  end
end
