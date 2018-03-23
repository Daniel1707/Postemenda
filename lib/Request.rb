class Requests
  def self.get(headers, request_url)
    begin
      response = RestClient.get request_url, header
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end

  def self.post(request_url, body, headers)
    begin
      response = RestClient.post request_url, body.to_json, headers
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end

  def self.put(headers, request_url, body)
    begin
      response = RestClient.put request_url, body.to_json, headers
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end

  def self.delete(headers, request_url)
    begin
      response = RestClient.delete request_url, headers
    rescue Exception => detail
      response = detail.response
    ensure
      return response
    end
  end
end
