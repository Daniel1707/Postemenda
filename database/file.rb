require 'fileutils'

class FileCreator

  def initialize(name_file, data)
    @name_file = name_file
    @data = data
    @path = "../data_step_temp"
  end

  def write
    FileUtils.mkdir_p @path

    File.open(@path + "/#{@name_file}.txt", "a") { |f|
      f.write(@data)
    }
  end

  def read
    @path = "../data_step_temp"

    File.open(@path + "/step_1.txt").each do |line|
      puts line
    end
  end
end
