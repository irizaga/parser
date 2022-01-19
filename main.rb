require_relative 'lib/manipulation'

class Main
  file = Parser.new('games.log')
  file.get_first_line
end
