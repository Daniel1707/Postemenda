class Requests

  def self.send(type, headers, body, path)
    begin
      response = RestClient.send(type) path, body.to_json, headers
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end
end
