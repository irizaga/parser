require_relative 'lib/parser'

file = Parser.new('games.log')
file.get_first_line
