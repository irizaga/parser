require_relative 'lib/parser'

file = Parser.new('games.log')
puts file.get_first_line
