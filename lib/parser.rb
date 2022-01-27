# frozen_string_literal: true

require 'json'

# log parser class
class Parser
  def initialize(file)
    @file = file

    raise ArgumentError, 'Arquivo não encontrado', caller unless File.exist?(file)

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
