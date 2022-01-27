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
    {
      'games.log': {
        lines: @data.size,
        players: player_names
      }
    }
  end

  private

  def player_names
    players = []
    @data.each do |line|
      next unless line.include? 'killed'

      player1 = line.split('killed')[0].split[5..].join
      player2 = line.split('killed')[1].split[..-3].join
      players << player1 << player2
    end
    players.delete('<world>')
    players.uniq
  end
end
