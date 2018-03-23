class Requests

  def self.send(method_name, headers, body, path)
    begin
      response = RestClient.send(method_name) path, body.to_json, headers
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end
end
