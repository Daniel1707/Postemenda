require 'json'

class ResponseController

def self.process_response(response)

  @contador = 1
  @step_number = @contador + 1

  json = { body: JSON.parse(response.body), code: response.code, detail: response }
  y = []
  if json[:body].is_a? (Array)
    json[:body].size.times do |i|
      x = instance_json_object(json[:body][i])
      y << x
      p y
    end
    return y
  else
    response = instance_json_object(json[:body])
    file = FileCreator.new(@step_number,response)

    return response
  end
  p json[:body]

  p instance_json_object(json[:body])


end

def self.instance_json_object(json)
    json_size = json.size
    response_object = OpenStruct.new(json)

    json_size.times do |index|
      item = response_object.each_pair.to_a[index]
      attribute = item.first
      attribute = attribute.to_s[0, attribute.to_s.size]
      json_son = instance_eval "response_object.#{attribute}"

      if json_son.is_a? (Array)
        if json_son.first.is_a? (Hash)
          json_son.size.times do |position|
            struct_json_son = instance_json_object(json_son[position])
            instance_eval "response_object.#{attribute}[#{position}] = struct_json_son"
          end
        end

      elsif json_son.is_a? (Hash)
        struct_json_son = instance_json_object(json_son)
        instance_eval "response_object.#{attribute} = struct_json_son"
      end

    end

    return response_object
  end
end
