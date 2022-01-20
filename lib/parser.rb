require 'json'

class Parser
  def initialize(file)
    @file = file
    unless File.exist?(file)
      raise StandardError.new "Arquivo não encontrado"
    else
      @data = File.readlines(file)
    end
  end
    
  def get_first_line
    first = @data.first
  end

  def line_count
    count = @data.size
    result = {
      "games.log": {
        "lines": count      
      }
    }
    result_json = result.to_json
  end
end
