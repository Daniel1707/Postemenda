class SelectorRequest

  def self.selectRequest(type,request_method,headers,body,path)
    
    if type.eql? "request"
      request_return = RequestController.new(headers,body,path)
    end

    if type.eql? "assert"
      assert_return = AssertController.new(result, expected)
    end

    if type.eql? "script"
      #post_return = RequestController.new(headers,body,path)
    end
  end
end
