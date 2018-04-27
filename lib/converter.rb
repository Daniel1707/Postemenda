class Converter

  def self.execute_code(string_code)
    begin
      eval string_code
    rescue Exception => exception
      raise "It was not possible to execute the code. See exception: #{exception}"
    end
  end

end

class Converter

  def self.execute_code(string_code)
    begin
      eval string_code
    rescue Exception => exception
      raise "It was not possible to execute the code. See exception: #{exception}"
    end
  end

end

class ttttt

  def self.tttttt(ttttt)
    begin
      eval string_code
    rescue Exception => exception
      t "It was not possible to execute the code. See exception: #{exception}"
    end
  end

end
