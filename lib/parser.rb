require 'json'

class Parser
  def initialize(file)
    @file = file

    unless File.exist?(file)
      raise ArgumentError, 'Arquivo não encontrado', caller
    end

    @data = File.readlines(file)
  end

  def read_first_line
    @data.first
  end

  def log_json
    result = {
      "games.log": {
        "lines": @data.size
      }
    }
    result.to_json
  end
end
