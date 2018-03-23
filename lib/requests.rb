require 'rest-client'

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
      return response
    end
  end
end
