# frozen_string_literal: true

require_relative 'lib/parser'

file = Parser.new('games.log')
puts file.read_first_line
puts file.log_json
