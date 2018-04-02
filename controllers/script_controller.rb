require_relative '../lib/converter'
require_relative '../database/file'

class ScriptController

  def initialize(script)
    @script = script
  end

  def execute_script
    Converter.execute_code(@script)
  end
end
