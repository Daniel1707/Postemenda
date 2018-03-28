require_relative '../lib/converter'

class ScriptController

  def initialize(script)
    @script = script
  end

  def execute_script
    Converter.execute_code(@script)
  end
end
